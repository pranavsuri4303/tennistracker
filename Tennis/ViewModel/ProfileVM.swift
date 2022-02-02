//
//  ProfileVM.swift
//  Tennis
//
//  Created by Pranav Suri on 6/2/21.
//

import SwiftUI
import LocalAuthentication
import Firebase

class ProfileVM : ObservableObject{
    // Firebase Stuff
    let db = Firestore.firestore()
    let uidStr = (Auth.auth().currentUser?.uid)
    @Published var gender = ""
    @Published var latestString : StringModel?
    @Published var alert = false
    @Published var alertMsg = ""
    // Loading Screen...
    @Published var isLoading = false
    @Published var urlLoaded = false
    // Getting BioMetricType....
    var urlImage: URL = URL(string: "www.google.com")!
    
    init() {
        print("hmm")
        self.fetchUserData()
    }
    
    // Fetch User Data
    func fetchUserData() {
        print(Storage.storage().reference())
        if let uidStr = uidStr {
            isLoading = true
            Firestore.firestore().collection("users").document("\(uidStr)").addSnapshotListener { (results, err) in
                if let err = err{
                    self.alert.toggle()
                    self.alertMsg = err.localizedDescription
                }else{
                    if let data = results{
                        self.isLoading = false
                        print(data)
                    }
                }
            }
            
            
        }
    }
    func fetchImageURL()  {
        let userID = Auth.auth().currentUser?.uid
        let imagePath = userID! + "/2x/profileImage.png"
        let url = Storage.storage().reference().child(imagePath).downloadURL { url, err in
            if let err = err{
                print(err.localizedDescription)
            }else{
                self.urlImage = url!
                print(self.urlImage.absoluteString)
                self.urlLoaded = true
            }
        }
    }
    
}

