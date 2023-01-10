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
    @Published var newString = StringModel(cross: 50, mains: 50, name: "", date: Date())
    @Published var sortType: Sort = .dateNewToOld

    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    @Published var stringEntry = StringEntry(stringName: "", crossTension: 50, mainTension: 50, stringingDate: Timestamp(), lastUpdated: Timestamp())

    @Published var mainsInput = XelaNumberInputProperties(label: "Mains", value: 50, state: .Default, helperText: "Strings tension for mains.", decreaseIcon: Icons.minusCircle.name, increaseIcon: Icons.addCircle.name)
    @Published var crossesInput = XelaNumberInputProperties(label: "Crosses", value: 50, state: .Default, helperText: "Strings tension for crosses.", decreaseIcon: Icons.minusCircle.name, increaseIcon: Icons.addCircle.name)

    let db = Firestore.firestore().collection("users")
    private let uidStr = Auth.auth().currentUser?.uid

    func deleteString(withData _: StringModel) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func addString(completion: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        if let uid = uidStr {
            let docRef = db.document(uid).collection("extensions").document("stringEntries")
            docRef.updateData(["count": FieldValue.increment(Int64(1)),
                               "lastUpdated": FieldValue.serverTimestamp(),
                               "stringEntries": FieldValue.arrayUnion([stringEntry.firestoreData])]) { err in
                if let err = err {
                    self.isLoading = false
                    completion(.failure(err))
                }
            }
            isLoading = false
            completion(.success(nil))
        }
    }

    func deleteString(completion _: @escaping (Result<Data?, Error>) -> Void) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }
}
