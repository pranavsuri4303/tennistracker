//
//  NewBaseViewVM.swift
//  Tennis
//
//  Created by Pranav Suri on 23/12/22.
//

import Firebase
import FirebaseAuth
import Foundation
class NewBaseViewVM: ObservableObject {
    private let uidStr = Auth.auth().currentUser?.uid ?? ""
    private let db = Firestore.firestore().collection("users")
    @Published var userData: UserDataModel?
    @Published var userDAtaTest: Person?
    @Published var currentTab: Tabs = .home
    @Published var showMenu: Bool = false

    func fetchUserData() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        db.document(uidStr).addSnapshotListener { snap, err in
            if let err = err {
                print("[Error]: \(err.localizedDescription)")
            } else {
                self.userDAtaTest = try! snap?.data(as: Person.self)

                dump(self.userDAtaTest)
            }
        }
    }
}
