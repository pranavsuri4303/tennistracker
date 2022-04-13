//
//  UserDataModel.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Firebase
import FirebaseFirestoreSwift
import Foundation

struct UserDataModel: Identifiable, Codable {
    internal init(uid: String, name: String, firsName: String, lastName: String, email: String, gender: String, nationality: String, yob: Int, imagePath: String, accountCreated: Date, friendRequests: [FriendsCellModel], friends: [FriendsCellModel]) {
        self.uid = uid
        self.name = name
        self.firstName = firsName
        self.lastName = lastName
        self.email = email
        self.gender = gender
        self.nationality = nationality
        self.yob = yob
        self.imagePath = imagePath
        self.accountCreated = accountCreated
        self.friendRequests = friendRequests
        self.friends = friends
    }

    @DocumentID public var id: String?
    var uid: String
    var name: String
    var firstName: String
    var lastName: String
    var email: String
    var gender: String
    var nationality: String
    var yob: Int
    var imagePath: String
    var accountCreated: Date
    var friendRequests: [FriendsCellModel]?
    var friends: [FriendsCellModel]?
    var strings: [StringModel]?
}

struct FriendsCellModel: Codable, Equatable, Hashable {
    internal init(uid: String, name: String, gender: String, nationality: String, yob: Int, imagePath: String, friendRequestReceived: Timestamp? = nil, friendsSince: Timestamp? = nil) {
        self.uid = uid
        self.name = name
        self.gender = gender
        self.nationality = nationality
        self.yob = yob
        self.imagePath = imagePath
        self.friendRequestReceived = friendRequestReceived
        self.friendsSince = friendsSince
    }
    
    var uid: String
    var name: String
    var gender: String
    var nationality: String
    var yob: Int
    var imagePath: String
    var friendRequestReceived: Timestamp?
    var friendsSince: Timestamp?
}

struct StringModel: Codable, Equatable, Hashable {
    var cross: Int
    var mains: Int
    var name: String
    var date: Date
    var firestoreData: [String: Any] {
        return [
            "cross": cross,
            "mains": mains,
            "name": name,
            "date": date
        ]
    }
}


