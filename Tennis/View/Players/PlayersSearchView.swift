//
//  PlayersView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import SwiftUI

struct PlayersSearchView: View {
    @State var showSearch = false
    @StateObject var vm = PlayersVM()
    @Binding var showMenu: Bool
    @Binding var currentTab: CurrentTab
    
    var body: some View {
        NavigationView {
            VStack {
                if vm.playerName == "" {
                    HStack {
                        Spacer()
                        VStack(alignment: .center, spacing: 20) {
                            Spacer()
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .foregroundColor(Color("green"))
                                .frame(width: 100, height: 100, alignment: .center)
                                    
                            Text("Search for a user using his email...")
                                .font(.headline)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)

                            Spacer()
                        }
                        Spacer()
                    }

                } else {
                    HStack {
                        Spacer()
                        ScrollView {
                            ForEach(vm.players, id: \.self) { player in
                                    
                                SearchPlayerRowView(player: player)
                                    
                            }.padding()
                                .edgesIgnoringSafeArea(.bottom)
                        }
                        Spacer()
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.horizontal.3")
                            .font(.title3)
                            .foregroundColor(Color("green"))
                    }
                }
            })
            .searchable(text: $vm.playerName, prompt: "Enter player's email...")
            .navigationBarTitle("\(currentTab.rawValue)")
            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct SearchPlayerRowView: View {
    let player: PlayerModel
    @ObservedObject var searchPlayerVM: SearchPlayerVM
    @State var isProfilePresented: Bool = false
    
    init(player: PlayerModel) {
        self.player = player
        self.searchPlayerVM = SearchPlayerVM(player: player)
    }
    
    var body: some View {
        HStack(alignment: .center) {
            if let downloadedImage = searchPlayerVM.downloadedImage {
                Image(uiImage: downloadedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50, alignment: .center)
            } else {
                Image(player.gender)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .scaledToFit()
            }
            
            Text(player.name)
                .font(.title2)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.all)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(Color("green"))
        }.padding(.all)
            .background(Color(.white).opacity(0.1).cornerRadius(8))
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                isProfilePresented.toggle()
            }
            .sheet(isPresented: $isProfilePresented, content: {
                PlayerProfileView(playerModel: .init(uid: player.uid, name: player.name, gender: player.gender, imagePath: "", nationality: player.nationality, downloadedImage: searchPlayerVM.downloadedImage), searchVM: searchPlayerVM, profileIsPresented: $isProfilePresented)
            })
    }
}
