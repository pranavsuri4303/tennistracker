//
//  FriendsListView.swift
//  Tennis
//
//  Created by Pranav Suri on 6/2/21.
//

import CachedAsyncImage
import SwiftUI

struct FriendsListView: View {
    @StateObject var friendRequestVM = FriendsVM()
    @State private var goToRequests = false
    let imageUrl = "https://www.atptour.com/-/media/alias/player-headshot/N409"
    @EnvironmentObject var baseVm: BaseViewVM
    var count = 1
    var body: some View {
        VStack {
            if baseVm.userData?.friends == nil || baseVm.userData?.friends == [] {
                RDEmptyListPlaceholder(headlineText: "What are you waiting for?!",
                                       subHeadlineText: "Go to the Players tab now to search and add your friends...",
                                       systemImageName: "magnifyingglass.circle")
            } else {
                ScrollView {
                    ForEach((baseVm.userData?.friends)!, id: \.self) { friend in
                        FriendsListCell(player: friend)
                    }
                }.padding(.horizontal, 8)
//                ScrollView {
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "1")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "2")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "3")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "4")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "5")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "6")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "7")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "8")
//                    FriendsListCell(imageUrl: URL(string: imageUrl)!,
//                                    firstName: "Test",
//                                    lastName: "9")
//                }.padding(.horizontal, 8)

                Spacer()
            }
        }
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                RDBadgeButton(systemImageTitle: self.baseVm.userData?.friendRequests?.count == 0 ? "bell" : "bell.badge", action: { goToRequests.toggle() })
                    .fullScreenCover(isPresented: $goToRequests, content: {
                        Text("Friend")
                    })
            }
        })
    }
}

struct FriendsListCell: View {
    let player: FriendsCellModel

    var body: some View {
        HStack(spacing: 8) {
            CachedAsyncImage(url: URL(string: player.imagePath)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: getRect().width * 0.15, height: getRect().width * 0.15)
                    .clipShape(Circle())
            } placeholder: {
                ZStack {
                    Circle()
                        .frame(width: getRect().width * 0.15, height: getRect().width * 0.15)
                        .foregroundColor(.white.opacity(0.1))
                    ProgressView()
                }
            }
            VStack {
                HStack {
                    Text("\(player.name)")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("\(String(player.yob).replacingOccurrences(of: ",", with: "")) | \(player.nationality)")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            Spacer()
            VStack {
                Image(systemName: "arrow.right")
                    .foregroundColor(Color("green"))
                    .font(.title3)
            }
        }
        .padding(8)
        .background(Color(.white).opacity(0.1))
        .cornerRadius(6)
    }
}
