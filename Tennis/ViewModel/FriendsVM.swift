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
    
    func setFriendshipStatus(recieverUserID: String) {
        print(currentUserID)
        var currentStatus = FriendshipStatus.notFriend
        
        if recieverUserID == currentUserID {
            self.currentStatus = .me
            return
        }
        Firestore.firestore().collection("users").document(recieverUserID).addSnapshotListener { snapshot, error in
            
            if let error = error {
                print(error)
                return
            }
            if let data = snapshot?.data() {
                if let friends = data["friends"] as? [String: String], friends.keys.contains(self.currentUserID), let friendship = friends[self.currentUserID], let friendshipStatus = FriendshipStatus(rawValue: friendship) {
                    switch friendshipStatus {
                    case .friend: currentStatus = .friend
                    case .pending: currentStatus = .pending
                    default: break
                    }
                } else {
                    currentStatus = .notFriend
                }
                self.currentStatus = currentStatus
            }
        }
    }
    
    func sendFriendRequest(recieverUserID: String) {
        print(recieverUserID)
        
        Firestore.firestore().collection("users").document(recieverUserID).setData(["friends": [currentUserID: FriendshipStatus.pending.rawValue]], merge: true) { error in
            if let error = error {
                print(error)
                return
            }
            self.currentStatus = .pending
        }
    }
    
    func acceptFriendRequest(senderUserID: String) {
        Firestore.firestore().collection("users").document(senderUserID).setData(["friends": [currentUserID: FriendshipStatus.friend.rawValue]], merge: true) { error in
            if let error = error {
                print(error)
                return
            }
            Firestore.firestore().collection("users").document(self.currentUserID).setData(["friends": [senderUserID: FriendshipStatus.friend.rawValue]], merge: true) { error in
                if let error = error {
                    print(error)
                    return
                }
                self.requestsUsers.removeAll(where: { $0.uid == senderUserID })
            }
        }
    }
    
    func declineFriendRequest(senderUserID: String) {
        Firestore.firestore().collection("users").document(currentUserID).getDocument { snapshot, error in
            if let error = error {
                print(error)
                return
            }
            
            if var data = snapshot?.data(), var friends = data["friends"] as? [String: String] {
                friends.removeValue(forKey: senderUserID)
                data.updateValue(friends, forKey: "friends")
                Firestore.firestore().collection("users").document(self.currentUserID).setData(data) { error in
                    if let error = error {
                        print(error)
                        return
                    }
                    
                    self.requestsUsers.removeAll(where: { $0.uid == senderUserID })
                }
            }
        }
    }
    
    func getPendingRequests() {
        requestsUsers = []
        Firestore.firestore().collection("users").document(currentUserID).addSnapshotListener { snapshot, error in
            
            if let error = error {
                print(error)
                return
            }
            
            if let data = snapshot?.data() {
                if let friends = data["friends"] as? [String: String] {
                    friends.filter { $0.value == FriendshipStatus.pending.rawValue }.map(\.key).forEach { userID in
                        
                        Firestore.firestore().collection("users").document(userID).getDocument { userSnapshot, error in
                            
                            if let error = error {
                                print(error)
                            }
                            
                            if let data = userSnapshot?.data() {
                                if let name = data["name"] as? String,
                                   let uid = data["uid"] as? String
                                {
                                    let playerModel = PlayerModel(uid: uid, name: name, gender: "", imagePath: (data["imageProfilePath"] as? String) ?? "", nationality: "")
                                    self.requestsUsers.append(playerModel)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    func getFriendsList() {
        friendsList = []
        Firestore.firestore().collection("users").document(currentUserID).addSnapshotListener { snapshot, error in
            
            if let error = error {
                print(error)
                return
            }
            
            if let data = snapshot?.data() {
                self.friendsList = []

                if let friends = data["friends"] as? [String: String] {
                    friends.filter { $0.value == FriendshipStatus.friend.rawValue }.map(\.key).forEach { userID in
                        
                        Firestore.firestore().collection("users").document(userID).getDocument { userSnapshot, error in
                            
                            if let error = error {
                                print(error)
                            }
                            
                            if let data = userSnapshot?.data() {
                                if let name = data["name"] as? String,
                                   let uid = data["uid"] as? String
                                {
                                    let playerModel = PlayerModel(uid: uid, name: name, gender: "", imagePath: (data["imageProfilePath"] as? String) ?? "", nationality: "")
                                    self.friendsList.append(playerModel)
                                    self.friendsListP1.append(playerModel.name)
                                    self.friendsListP2.append(playerModel.name)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
