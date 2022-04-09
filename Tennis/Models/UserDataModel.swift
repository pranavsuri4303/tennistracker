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
    var friendRequests: [FriendsCellModel]
    var friends: [FriendsCellModel]
    var strings: [StringModel]?
}

struct FriendsCellModel: Identifiable, Codable, Equatable {
    internal init(uid: String, name: String, gender: String, nationality: String, yob: Int, imagePath: String) {
        self.uid = uid
        self.name = name
        self.gender = gender
        self.nationality = nationality
        self.yob = yob
        self.imagePath = imagePath
    }

    var id = UUID()
    var uid: String
    var name: String
    var gender: String
    var nationality: String
    var yob: Int
    var imagePath: String
    var friendRequestReceived: Timestamp?
    var friendsSince: Timestamp?
}

struct StringModel: Identifiable, Codable, Equatable, Hashable {
    internal init(cross: Int, date: Timestamp, mains: Int, name: String) {
        self.cross = cross
        self.date = date
        self.mains = mains
        self.name = name
    }
    var id = UUID()
    let cross: Int
    let date: Timestamp
    let mains: Int
    let name: String
}
