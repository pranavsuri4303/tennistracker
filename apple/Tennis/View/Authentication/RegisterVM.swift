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
            Auth.auth().createUser(withEmail: email, password: password) { res, err in
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
