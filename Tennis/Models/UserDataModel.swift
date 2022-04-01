//
//  UserDataModel.swift
//  Tennis
//
//  Created by Pranav Suri on 1/4/22.
//

import Foundation
import FirebaseFirestoreSwift

struct UserDataModel: Identifiable, Codable {
    @DocumentID public var id: String?
    let uid: String
    let name: String?
    let firsName: String?
    let lastName: String?
    let nationality: String?
    let yob: String?
    let imagePath: String?
    let accountCreated: Date?
    let friendRequests: [FriendsCellModel]?
    let friends: [FriendsCellModel]?
}

struct FriendsCellModel: Codable {
    let uid: String
    let name: String?
    let nationality: String?
    let yob: String?
    let imagePath: String?
    let friendRequestTime: Date?
}
