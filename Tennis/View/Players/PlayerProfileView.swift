//
//  PlayerProfileView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import SwiftUI

struct PlayerProfileView: View {
    let playerModel : PlayerModel
    @StateObject var sendFriendRequestVM = FriendsVM.init()
    let searchVM : SearchPlayerVM
    @Binding var profileIsPresented: Bool
    var body: some View {
        VStack{
            HStack{
                RDBadgeButton(systemImageTitle: "xmark.circle",
                              action: { profileIsPresented.toggle() })
                Spacer()
                RDHeader(title: playerModel.name)
                Spacer()
                RDBadgeButton(systemImageTitle: "person.crop.circle.badge.plus",
                              action: {                     sendFriendRequestVM.sendFriendRequest(recieverUserID: playerModel.uid) })
                    .disabled(sendFriendRequestVM.currentStatus == .friend || sendFriendRequestVM.currentStatus == .pending || sendFriendRequestVM.currentStatus == .me)
                    .opacity(sendFriendRequestVM.currentStatus == .friend || sendFriendRequestVM.currentStatus == .pending || sendFriendRequestVM.currentStatus == .me ? 0.5 : 1)

            }.padding(.all)
            .background(Color("bg").edgesIgnoringSafeArea(.all))
            ScrollView(.vertical, showsIndicators: false, content: {
                
                GeometryReader{reader in
                    
                    // Type 2 Parollax....
                    
                    if reader.frame(in: .global).minY > -480 {
                        if let playerImage = playerModel.downloadedImage {
                            Image(uiImage: playerImage)
                                .resizable()
                                .padding(.top,75)
                                .aspectRatio(contentMode: .fill)
                                // moving View Up....
                                .offset(y: -reader.frame(in: .global).minY)
                                // going to add parallax effect....
                                .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)
                                .transition(.asymmetric(insertion: .scale, removal: .opacity))
                            
                        }else {
                            Image(playerModel.gender == "Male" ? "Male":"Female" )
                                .resizable()
                                .padding(.top,75)
                                .aspectRatio(contentMode: .fill)
                                // moving View Up....
                                .offset(y: -reader.frame(in: .global).minY)
                                // going to add parallax effect....
                                .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)
                                .transition(.asymmetric(insertion: .scale, removal: .opacity))
                            
                            
                        }
                    }
                }
                .frame(height: 480)
                VStack(alignment: .leading,spacing: 15){
                    HStack{
                        Text(playerModel.name)
                            .font(.system(size: 35, weight: .bold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                        Spacer()
                        Text(playerModel.gender )
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            sendFriendRequestVM.sendFriendRequest(recieverUserID: playerModel.uid)
                            
                        }, label: {
                            RDButton(withTitle: sendFriendRequestVM.buttonTitle)
                        }).padding()
                        .disabled(sendFriendRequestVM.currentStatus == .friend || sendFriendRequestVM.currentStatus == .pending || sendFriendRequestVM.currentStatus == .me)
                        .opacity(sendFriendRequestVM.currentStatus == .friend || sendFriendRequestVM.currentStatus == .pending || sendFriendRequestVM.currentStatus == .me ? 0.5 : 1)
                        Spacer()
                    }
                }
                .padding(.top, 25)
                .padding(.horizontal)
                .background(Color("bg"))
                .cornerRadius(20)
                .offset(y: -30)
                .edgesIgnoringSafeArea(.horizontal)
            })
            .edgesIgnoringSafeArea(.all)
            .background(Color("bg").edgesIgnoringSafeArea(.all))
            .onAppear(perform: {
                sendFriendRequestVM.setFriendshipStatus(recieverUserID: playerModel.uid)
                searchVM.loadImageFromStorageWithBiggerSize()
            })
        }
        .background(Color("bg"))
    }
}

