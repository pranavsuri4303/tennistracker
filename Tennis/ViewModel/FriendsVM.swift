//
//  SendFriendRequestVM.swift
//  Tennis
//
//  Created by Pranav Suri on 06/02/2021.
//

import Combine
import Firebase
import Foundation

enum FriendshipStatus: String {
    case friend
    case pending
    case notFriend
    case me
}

class FriendsVM: ObservableObject {
    private var subscribtions: Set<AnyCancellable> = []
    let currentUserID: String = Auth.auth().currentUser!.uid
    @Published var buttonTitle: String = FriendshipStatus.notFriend.rawValue
    @Published var requestsUsers: [PlayerModel] = []
    @Published var friendsList: [PlayerModel] = []
    @Published var friendsListP1: [String] = ["\((Auth.auth().currentUser?.displayName)!)(You)"]
    @Published var friendsListP2: [String] = [""]
    
    var currentStatus = FriendshipStatus.notFriend {
        didSet {
            switch currentStatus {
            case .friend: buttonTitle = "Friend"
            case .notFriend: buttonTitle = "Send Friend Request"
            case .pending: buttonTitle = "Pending Request"
            case .me: buttonTitle = "Your Profile"
            }
        }
    }
    
    func acceptFriendRequest(){
        print("[Function Called]: \(#function)")
        // 1. Get basic array data from friend request          1 Read
        // 2. Add data to friends collection                    1 Write
        // 3. Add current users data to friend's collection     1 Write
        // 4. Delete array data from friend request             1 Write
    }
    
    func rejectFriendRequest(){
        print("[Function Called]: \(#function)")
        // 1. Delete index from friend requests array
    }
    
    func removeFriend(){
        print("[Function Called]: \(#function)")
        // 1. Delete index from user list array
        // 1. Delete index from friend's list array
    }
    
    func fetchFriendRequests(){
        print("[Function Called]: \(#function)")
        // 1. Get list from users collection already loaded
    }
    
    func fetchFriendsList(){
        print("[Function Called]: \(#function)")
        // 1. Get list from users collection already loaded
    }
}




/*
--->Users
    --->Friends
            friendUID|uid, name, country, yob, friendSince|
    --->Matches
            randomID|uid?, name, country?, yob?, friendStatus
    --->Strings



*/
