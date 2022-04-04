//
//  UserDataModel.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Foundation
import FirebaseFirestoreSwift

struct UserDataModel: Identifiable, Codable {
    internal init(uid: String, name: String, firsName: String, lastName: String, email: String, gender: String, nationality: String, yob: String, imagePath: String, accountCreated: Date, friendRequests: [FriendsCellModel], friends: [FriendsCellModel]) {
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
    var yob: String
    var imagePath: String
    var accountCreated: Date
    var friendRequests: [FriendsCellModel]
    var friends: [FriendsCellModel]
}

struct FriendsCellModel: Identifiable, Codable, Equatable {
    internal init(uid: String, name: String, gender: String, nationality: String, yob: String, imagePath: String, friendRequestTime: Date) {
        self.uid = uid
        self.name = name
        self.gender = gender
        self.nationality = nationality
        self.yob = yob
        self.imagePath = imagePath
        self.friendRequestTime = friendRequestTime
    }
    
    @DocumentID public var id: String?
    var uid: String
    var name: String
    var gender: String
    var nationality: String
    var yob: String
    var imagePath: String
    var friendRequestTime: Date
}
