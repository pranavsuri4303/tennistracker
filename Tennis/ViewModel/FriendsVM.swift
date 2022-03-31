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
}
