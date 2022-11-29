//
//  StringViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 28/1/21.
//

import Firebase
import LocalAuthentication
import SwiftUI

class AddStringVM: ObservableObject {
    let db = Firestore.firestore()
    let uidStr = (Auth.auth().currentUser?.uid)!
    @Published var stringName = ""
    @Published var mainsTension = 50
    @Published var crossTension = 50
    @Published var date = Date()
    @Published var notes = ""

    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false

    func addString() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        let docRef = db.collection("users").document(uidStr).collection("strings")
        let data: [String: Any] = ["name": stringName,
                                   "mains": mainsTension,
                                   "cross": crossTension,
                                   "date": date]
        docRef.addDocument(data: data) { err in
            if let err = err {
                self.isLoading = false
                self.alert.toggle()
                self.alertMsg = err.localizedDescription
            } else {
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

    func deleteString() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
    }
}
