//
//  StringViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 28/1/21.
//

import SwiftUI
import LocalAuthentication
import Firebase

class AddStringVM : ObservableObject{
    // Firebase Stuff
    let db = Firestore.firestore()
    let uidStr = (Auth.auth().currentUser?.uid)!
    @Published var stringName = ""
    @Published var mainsTension = 50
    @Published var crossTension = 50
    @Published var date = Date()
    @Published var notes = ""
    // User Data....
    // For Alerts..
    @Published var alert = false
    @Published var alertMsg = ""
    // Loading Screen...
    @Published var isLoading = false

    
    // Create User...
    func addString() {
        isLoading = true
        let docRef  = db.collection("users").document(uidStr).collection("strings")
        let data: [String: Any] = ["name": stringName,
                                   "mains": mainsTension,
                                   "cross": crossTension,
                                   "date": date]
        docRef.addDocument(data: data){err in
            if let err = err{
                self.isLoading = false
                self.alert.toggle()
                self.alertMsg = err.localizedDescription
            }else{
                self.isLoading = false
                self.alertMsg = "New string has been added!"
                self.alert.toggle()
                self.stringName = ""
                self.mainsTension = 50
                self.crossTension = 50
                self.date = Date()
                self.notes = ""
            }
            
        }
    }
    

    
    
}

