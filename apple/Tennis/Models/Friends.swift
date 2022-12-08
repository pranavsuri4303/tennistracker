//
//  Friends.swift
//  Tennis
//
//  Created by Pranav Suri on 7/12/22.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class Friends: Codable, Equatable {
    var count: Int?
    var lastUpdated: Timestamp?
    var friendsList: [FriendItem?]?
    
    internal init(count: Int? = nil, lastUpdated: Timestamp? = nil, friendsList: [FriendItem?]? = nil) {
        self.count = count
        self.lastUpdated = lastUpdated
        self.friendsList = friendsList
    }
    
    enum CodingKeys: String, CodingKey {
        case count
        case lastUpdated
        case friendsList
    }
    
    static func == (lhs: Friends, rhs: Friends) -> Bool {
        return lhs.count == rhs.count &&
        lhs.lastUpdated == rhs.lastUpdated &&
        lhs.friendsList == rhs.friendsList
    }
}

class FriendItem: Codable, Equatable {
    var friend: Person?
    var friendsSince: Timestamp?
    var lastUpdated: Timestamp?
    
    internal init(friend: Person? = nil, friendsSince: Timestamp? = nil, lastUpdated: Timestamp? = nil) {
        self.friend = friend
        self.friendsSince = friendsSince
        self.lastUpdated = lastUpdated
    }
    
    enum CodingKeys: String, CodingKey {
        case friend
        case friendsSince
        case lastUpdated

    }
    
    static func == (lhs: FriendItem, rhs: FriendItem) -> Bool {
        return lhs.friend == rhs.friend &&
        lhs.friendsSince == rhs.friendsSince &&
        lhs.lastUpdated == rhs.lastUpdated
    }
    
}
