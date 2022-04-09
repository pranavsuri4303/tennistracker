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
    @Published var userData = UserDataModel(uid: "", name: "", firsName: "", lastName: "", email: "", gender: "", nationality: "", yob: 0, imagePath: "", accountCreated: Date(), friendRequests: [], friends: [])
    @Published var password = ""
    @Published var isLoading = false
    private let usersCollectionRef = Firestore.firestore().collection("users")
    var imageData: (Data?)
    @AppStorage("status") var logged = false

    func uploadImage(UIImage image: UIImage, completion: @escaping (Result<Data?, Error>) -> Void){
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        imageData = (image.jpegData(compressionQuality: 0.9))
        let imageRef = Firebase.Storage.storage().reference().child(self.userData.uid).child("profilePicture").child("\(self.userData.uid).jpg")
            imageRef.putData(imageData!, metadata: nil) { metaData, err in
            if let err = err{
                completion(.failure(err))
            }else{
                self.userData.imagePath = "https://firebasestorage.googleapis.com/v0/b/tennistrackerdev.appspot.com/o/\(self.userData.uid)%2FprofilePicture%2F\(self.userData.uid).jpg?alt=media"
                completion(.success(nil))
            }
        }
    }
    
    func uploadFirestore(completion: @escaping (Result<Data?, Error>) -> Void){
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        do{
            try self.usersCollectionRef.document(self.userData.uid).setData(from: self.userData)
            completion(.success(nil))
        } catch let error{
            completion(.failure(error))
        }
    }
    
    func uploadUserData(UIImage image: UIImage?, completion: @escaping (Result<Data?, Error>) -> Void){
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        self.isLoading = true
        if let image = image {
            print(Firebase.Storage.storage().reference().child(self.userData.uid).child("profilePicture").child("\(self.userData.uid).jpg"))
            uploadImage(UIImage: image) { res in
                self.isLoading = false
                switch res {
                case .success:
                    self.uploadFirestore() { res in
                        self.isLoading = false
                        switch res {
                        case .success:
                            withAnimation {
                                self.logged = true
                                self.isLoading = false
                            }
                            completion(.success(nil))
                        case .failure(let error):
                            completion(.failure(error))
                        }
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                    completion(.failure(error))
                }
            }
        }else{
            uploadFirestore { res in
                self.isLoading = false
                switch res {
                case .success:
                    withAnimation {
                        self.logged = true
                        self.isLoading = false
                    }
                    completion(.success(nil))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }

    func createAccount(completion: @escaping (Result<Data?, Error>) -> (Void)){
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        self.isLoading = true
        Auth.auth().createUser(withEmail: userData.email, password: password) { res, err in
            if let err = err{
                self.isLoading = false
                completion(.failure(err))
            } else{
                self.isLoading = false
                if let uid = res?.user.uid,
                    let email = res?.user.email{
                    self.userData.uid = uid
                    self.userData.email = email
                }
                completion(.success(nil))
            }
        }
    }
    
}
