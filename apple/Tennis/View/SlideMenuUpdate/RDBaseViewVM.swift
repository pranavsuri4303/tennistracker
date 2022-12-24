//
//  NewBaseViewVM.swift
//  Tennis
//
//  Created by Pranav Suri on 23/12/22.
//

import Firebase
import FirebaseAuth
import Foundation
class RDBaseViewVM: ObservableObject {
    private let uidStr = Auth.auth().currentUser?.uid ?? ""
    private let db = Firestore.firestore().collection("users")
    @Published var personData: Person?
    @Published var stringEntries: StringEntries?
    @Published var userData: UserDataModel?
    @Published var currentTab: Tabs = .home

    func fetchUserData() {
        listenPeronData()
        listenStringEntries()
    }

    func listenPeronData() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        db.document(uidStr).addSnapshotListener { snap, err in
            if let err = err {
                print("[Error]: \(err.localizedDescription)")
            } else {
                self.personData = try! snap?.data(as: Person.self)
                dump(self.personData)
            }
        }
    }

    func listenStringEntries() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        db.document(uidStr).collection("extensions").document("stringEntries").addSnapshotListener { snap, err in
            if let err = err {
                print("[Error]: \(err.localizedDescription)")
            } else {
                self.stringEntries = try! snap?.data(as: StringEntries.self)
                dump(self.stringEntries)
            }
        }
    }
}
