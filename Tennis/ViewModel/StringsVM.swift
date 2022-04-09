//
//  StringsListViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 30/01/2021.
//

import Combine
import CoreMedia
import Firebase

class StringsVM: ObservableObject {
    @Published var newString = StringModel(cross: 50, date: Timestamp(), mains: 50, name: "")
    @Published var sortType: Sort = .dateNewToOld
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    let db = Firestore.firestore().collection("users")
    private let uidStr = Auth.auth().currentUser?.uid

    func deleteString(at index: IndexSet) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }
    
    func addString() {
        db.document(uidStr!).updateData(["strings" : FieldValue.arrayUnion([newString])]) { err in
            if let err = err{
                print("\(err)")
            }
        }
    }
}
