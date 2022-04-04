//
//  StringsListViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 30/01/2021.
//

import Combine
import CoreMedia
import Firebase

class StringsListVM: ObservableObject {
    @Published var stringsList: [StringModel] = []
    @Published var sortType: Sort = .dateNewToOld
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    let db = Firestore.firestore()
    
    init() {
        getStringsList()
    }
    
    func getStringsList() {
        print("[Function Called]: \(#function)")
        isLoading = true
        let uid = Auth.auth().currentUser?.uid
        
        let query = db.collection("users").document(uid!)
            .collection("strings")
            .order(by: sortType.key(),
                   descending: sortType.order())
        
        query.addSnapshotListener { querySnapshot, error in
            if let error = error {
                self.alert.toggle()
                self.alertMsg = error.localizedDescription
                self.isLoading = false
                print("Error getting documents: \(error)")
            } else {
                print("String List VM GetData Called and inside else")
                self.isLoading = false
                for document in querySnapshot!.documents {
                    print("iterating through collection")
                    print(document.data())
                    let data = document.data()
                    self.stringsList.append(StringModel(id: document.documentID,
                                                        cross: data["cross"] as? Int ?? 10,
                                                        date: data["date"] as? TimeInterval ?? TimeInterval(),
                                                        mains: data["mains"] as? Int ?? 10,
                                                        name: data["name"] as? String ?? "String Name"))
                }
            }
        }
    }
    
    func deleteString(at index: IndexSet) {
        print("[Function Called]: \(#function)")
        let indexToDelete = index[index.startIndex]
        
        let uid = Auth.auth().currentUser?.uid
        let collectionRef = db.collection("users").document(uid!).collection("strings")

        collectionRef.document("\(stringsList[indexToDelete].id)").delete { err in
            if let err = err {
                print("Error removing document: \(err)")
            } else {
                print("Document successfully removed!")
            }
        }
    }
}
