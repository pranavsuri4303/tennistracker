//
//  BaseViewVM.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Foundation
import FirebaseAuth
import Firebase
class BaseViewVM: ObservableObject {
    let uidStr = Auth.auth().currentUser?.uid ?? ""
    let db = Firestore.firestore().collection("users")
    @Published var userData: UserDataModel?
    
    func fetchUserData() {
        print("[Function Called]: \(#function)")
        db.document(uidStr).addSnapshotListener { snap, err in
            if let err = err{
                print(("[Error]: \(err.localizedDescription)"))
            }else{
                self.userData = try! snap?.data(as: UserDataModel.self)
                print("[User Data]: \(self.userData)")
            }
        }
    }
}
