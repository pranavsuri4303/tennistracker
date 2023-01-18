//
//  RegisterVM.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import Firebase
import LocalAuthentication
import FirebaseFirestoreSwift
import SwiftUI

class RegisterVM: ObservableObject {
    @AppStorage("status") var logged = false
    @Published var isLoading = false
    @Published var user = Person()
    @Published var password = ""
    @Published var registerButton = XelaButtonProperties(text: "Sign up", state: .Default)
    @Published var googleSsoButton = XelaButtonProperties(text: "Sign up with Google.", state: .Default)
    @Published var givenNameTF = XelaTextFieldProperties(placeholder: "First name", value: "", state: .Default, helperText: "")
    @Published var familyNameTF = XelaTextFieldProperties(placeholder: "Last name", value: "", state: .Default, helperText: "")
    @Published var dobDateManager = XelaDateManager(calendar: Calendar.current,
                                                    minimumDate: Date().addingTimeInterval(60 * 60 * 24 * 365 * 100 * -1),
                                                    maximumDate: Date().addingTimeInterval(0),
                                                    selectedDate: Date(),
                                                    mode: 0)
    @Published var dobTF = XelaTextFieldProperties(placeholder: "Date of Birth", value: "", state: .Default, helperText: "")
    @Published var nationalityTF = XelaTextFieldProperties(placeholder: "Nationality", value: "", state: .Default, helperText: "")
    let nationsList = Locale.isoRegionCodes.compactMap { "\($0) | \(Locale(identifier: "en_US").localizedString(forRegionCode: $0)!)" }.sorted { $0 < $1 }

    private let usersCollectionRef = Firestore.firestore().collection("users")
    var imageData: Data?

    func uploadImage(UIImage image: UIImage, completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        imageData = (image.jpegData(compressionQuality: 0.9))
        if let uid = user.personID {
            let imageRef = Firebase.Storage.storage().reference().child(uid).child("profilePicture").child("\(uid).jpg")
            imageRef.putData(imageData!, metadata: nil) { _, err in
                if let err = err {
                    completion(.failure(err))
                } else {
                    var userImageUrl = Extension()
                    userImageUrl.extensionDescription = "URL for Profile Picture"
                    userImageUrl.name = "profilePicture"
                    userImageUrl.value = "https://firebasestorage.googleapis.com/v0/b/tennistrackerdev.appspot.com/o/\(uid)%2FprofilePicture%2F\(uid).jpg?alt=media"
                    self.user.extensions = []
                    self.user.extensions?.append(userImageUrl)
                    completion(.success(nil))
                }
            }
        }
    }

    func uploadFirestore(completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        do {
            if let uid = Auth.auth().currentUser?.uid {
                try usersCollectionRef.document(uid).setData(from: user, merge: true)
                dump(user)
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
                            self.isLoading = false
                            completion(.failure(error))
                        }
                    }
                case let .failure(error):
                    self.isLoading = false
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
                    self.isLoading = false
                    completion(.failure(error))
                }
            }
        }
    }

    func createAccount(completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        Auth.auth().createUser(withEmail: user.emailAddress ?? "", password: password) { res, err in
            if let err = err {
                self.isLoading = false
                print(err)
                completion(.failure(err))
            } else {
                self.isLoading = false
                if let uid = res?.user.uid,
                   let email = res?.user.email
                {
                    self.user.personID = uid
                    self.user.emailAddress = email
                }
                completion(.success(nil))
            }
        }
    }
    
    func updateNationality(for country: String) {
        let codeIndex = country.index(country.startIndex, offsetBy: 2)
        let descriptionIndex = country.index(country.startIndex, offsetBy: 5)
        user.nationalityCode = String(country.prefix(upTo: codeIndex))
        nationalityTF.value = String(country.suffix(from: descriptionIndex))
    }

    private func getCountryCode(for fullCountryName : String) -> String {
        let locales : String = ""
        for localeCode in NSLocale.isoCountryCodes {
            let identifier = NSLocale(localeIdentifier: localeCode)
            let countryName = identifier.displayName(forKey: NSLocale.Key.countryCode, value: localeCode)
            if fullCountryName.lowercased() == countryName?.lowercased() {
                print(localeCode)
                return localeCode
            }
        }
        return locales
    }
}
