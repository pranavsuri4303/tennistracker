//
//  BaseViewVM.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Firebase
import FirebaseAuth
import Foundation
class BaseViewVM: ObservableObject {
    private let uidStr = Auth.auth().currentUser?.uid ?? ""
    private let db = Firestore.firestore().collection("users")
    @Published var userData: UserDataModel?

    func fetchUserData() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        db.document(uidStr).addSnapshotListener { snap, err in
            if let err = err {
                print("[Error]: \(err.localizedDescription)")
            } else {
                self.userData = try! snap?.data(as: UserDataModel.self)
                dump(self.userData)
            }
        }
    }
}
