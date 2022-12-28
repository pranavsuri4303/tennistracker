//
//  SendFriendRequestVM.swift
//  Tennis
//
//  Created by Pranav Suri on 06/02/2021.
//

import Combine
import Firebase
import Foundation

class FriendsVM: ObservableObject {
    let friendsDocRef = Firestore.firestore().collection("users").document(Auth.auth().currentUser!.uid).collection("extensions").document("friends")
    @Published var buttonTitle: String = FriendshipStatus.notFriend.rawValue
    @Published var requestsUsers: [PlayerModel] = []
    @Published var friendsList: [PlayerModel] = []
    @Published var friendsListP1: [String] = ["(You)"]
    @Published var friendsListP2: [String] = [""]
    @Published var data: Friendships?

    func getData() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func getPendingRequest() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func getSentRequests() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func acceptFriendRequest() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        // 1. Get basic array data from friend request          1 Read
        // 2. Add data to friends collection                    1 Write
        // 3. Add current users data to friend's collection     1 Write
        // 4. Delete array data from friend request             1 Write
    }

    func rejectFriendRequest() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        // 1. Delete index from friend requests array
    }

    func removeFriend() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        // 1. Delete index from user list array
        // 1. Delete index from friend's list array
    }
}
