//
//  RegisterVM.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import Firebase
import LocalAuthentication
import SwiftUI

class RegisterVM: ObservableObject {
    @Published var password = ""
    @Published var isLoading = false
    @Published var newUser = Person()
    @Published var emailTF = XelaTextFieldProperties(placeholder: "Email", value: "", state: .Default, helperText: "")
    @Published var passwordTF = XelaTextFieldProperties(placeholder: "Password", value: "", state: .Default, helperText: "")
    @Published var registerButton = XelaButtonProperties(text: "Sign up", state: .Default)
    @Published var googleSsoButton = XelaButtonProperties(text: "Sign up with Google.", state: .Default)
    @Published var givenNameTF = XelaTextFieldProperties(placeholder: "First name", value: "", state: .Default, helperText: "")
    @Published var familyNameTF = XelaTextFieldProperties(placeholder: "Last name", value: "", state: .Default, helperText: "")

    @Published var dobTF = XelaTextFieldProperties(placeholder: "Date of Birth", value: "", state: .Default, helperText: "")
    @Published var nationalityTF = XelaTextFieldProperties(placeholder: "Nationality", value: "", state: .Default, helperText: "")

    @Published var yobDateManager: XelaDateManager = .init(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60 * 60 * 24 * 365 * 100 * -1),
        maximumDate: Date().addingTimeInterval(0),
        selectedDate: Date(),
        mode: 0,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Blue3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 40
    )
    let dateFormatter = DateFormatter()
        .dateFormat = "MMM d, y"
    let yearsList = Array(Calendar.current.component(.year, from: Date()) - 100 ... Calendar.current.component(.year, from: Date()) - 5).map { String($0) }.sorted { $0 > $1 }
    let nationsList = Locale.isoRegionCodes.compactMap { "\($0) | \(Locale(identifier: "en_US").localizedString(forRegionCode: $0)!)" }.sorted { $0 < $1 }

    private let usersCollectionRef = Firestore.firestore().collection("users")
    var imageData: Data?
    @AppStorage("status") var logged = false

    func uploadImage(UIImage image: UIImage, completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        imageData = (image.jpegData(compressionQuality: 0.9))
        if let uid = newUser.personID {
            let imageRef = Firebase.Storage.storage().reference().child(uid).child("profilePicture").child("\(uid).jpg")
            imageRef.putData(imageData!, metadata: nil) { _, err in
                if let err = err {
                    completion(.failure(err))
                } else {
                    let userImageUrl = Extension()
                    userImageUrl.extensionDescription = "URL for Profile Picture"
                    userImageUrl.name = "profilePicture"
                    userImageUrl.value = "https://firebasestorage.googleapis.com/v0/b/tennistrackerdev.appspot.com/o/\(uid)%2FprofilePicture%2F\(uid).jpg?alt=media"
                    self.newUser.extensions = []
                    self.newUser.extensions?.append(userImageUrl)
                    completion(.success(nil))
                }
            }
        }
    }

    func uploadFirestore(completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        do {
            if let uid = newUser.personID {
                try usersCollectionRef.document(uid).setData(from: newUser)
                dump(newUser)
                completion(.success(nil))
            }
        } catch {
            completion(.failure(error))
        }
    }

    func uploadUserData(UIImage image: UIImage?, completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        if let image = image {
            uploadImage(UIImage: image) { res in
                self.isLoading = false
                switch res {
                case .success:
                    self.uploadFirestore { res in
                        self.isLoading = false
                        switch res {
                        case .success:
                            withAnimation {
                                self.logged = true
                                self.isLoading = false
                            }
                            completion(.success(nil))
                        case let .failure(error):
                            completion(.failure(error))
                        }
                    }
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        } else {
            uploadFirestore { res in
                self.isLoading = false
                switch res {
                case .success:
                    withAnimation {
                        self.logged = true
                        self.isLoading = false
                    }
                    completion(.success(nil))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }
    }

    func createAccount(completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        if let email = newUser.emailAddress {
            Auth.auth().createUser(withEmail: email, password: passwordTF.value) { res, err in
                if let err = err {
                    self.isLoading = false
                    print(err)
                    completion(.failure(err))
                } else {
                    self.isLoading = false
                    if let uid = res?.user.uid,
                       let email = res?.user.email
                    {
                        self.newUser.personID = uid
                        self.newUser.emailAddress = email
                    }
                    completion(.success(nil))
                }
            }
        }
    }
}
