//
//  Friendships.swift
//  Tennis
//
//  Created by Pranav Suri on 7/12/22.
//

import Firebase
import FirebaseFirestoreSwift
import Foundation

class Friendships: Codable, Equatable {
    var count: Int?
    var friendsCount: Int?
    var sentRequestsCount: Int?
    var pendingRequestsCount: Int?
    var updated: Date?
    var friendships: [Friendship?]?

    internal init(count: Int? = nil, friendsCount: Int? = nil, sentRequestsCount: Int? = nil, pendingRequestsCount: Int? = nil, updated: Date? = nil, friendships: [Friendship?]? = nil) {
        self.count = count
        self.friendsCount = friendsCount
        self.sentRequestsCount = sentRequestsCount
        self.pendingRequestsCount = pendingRequestsCount
        self.updated = updated
        self.friendships = friendships
    }

    enum CodingKeys: String, CodingKey {
        case count
        case friendsCount
        case sentRequestsCount
        case pendingRequestsCount
        case updated
        case friendships
    }

    static func == (lhs: Friendships, rhs: Friendships) -> Bool {
        return lhs.count == rhs.count &&
            lhs.friendsCount == rhs.friendsCount &&
            lhs.sentRequestsCount == rhs.sentRequestsCount &&
            lhs.pendingRequestsCount == rhs.pendingRequestsCount &&
            lhs.updated == rhs.updated &&
            lhs.friendships == rhs.friendships
    }
}

class Friendship: Codable, Equatable {
    var friend: Person?
    var friendshipStatus: FriendshipStatus?
    var friendRequestReceived: Date?
    var friendRequestSent: Date?
    var friendsSince: Date?
    var updated: Date?

    internal init(friend: Person? = nil, friendshipStatus: FriendshipStatus? = nil, friendRequestReceived: Date? = nil, friendRequestSent: Date? = nil, friendsSince: Date? = nil, updated: Date? = nil) {
        self.friend = friend
        self.friendshipStatus = friendshipStatus
        self.friendRequestReceived = friendRequestReceived
        self.friendRequestSent = friendRequestSent
        self.friendsSince = friendsSince
        self.updated = updated
    }

    enum CodingKeys: String, CodingKey {
        case friend
        case friendshipStatus
        case friendRequestReceived
        case friendRequestSent
        case friendsSince
        case updated
    }

    static func == (lhs: Friendship, rhs: Friendship) -> Bool {
        return lhs.friend == rhs.friend &&
            lhs.friendshipStatus == rhs.friendshipStatus &&
            lhs.friendRequestReceived == rhs.friendRequestReceived &&
            lhs.friendRequestSent == rhs.friendRequestSent &&
            lhs.friendsSince == rhs.friendsSince &&
            lhs.updated == rhs.updated
    }
}

enum FriendshipStatus: String, CaseIterable {
    case friend
    case pending
    case requested
    case notFriend

    var code: String {
        switch self {
        case .friend: return "F"
        case .pending: return "P"
        case .requested: return "R"
        case .notFriend: return "N"
        }
    }

    var extendedCode: String {
        switch self {
        case .friend: return "FRIEND"
        case .pending: return "PENDING"
        case .requested: return "REQUESTED"
        case .notFriend: return "NOT FRIEND"
        }
    }

    var description: String {
        switch self {
        case .friend: return "Friend"
        case .pending: return "Request pending"
        case .requested: return "Request sent"
        case .notFriend: return "Not friends"
        }
    }

    static func getFriendshipStatus(friendshipStatus: String) -> FriendshipStatus {
        switch friendshipStatus {
        case "F":
            return .friend
        case "P":
            return .pending
        case "R":
            return .requested
        case "N":
            return .notFriend
        default: return .notFriend
        }
    }
}

extension FriendshipStatus: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = FriendshipStatus.getFriendshipStatus(friendshipStatus: rawValue)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(code)
    }
}
