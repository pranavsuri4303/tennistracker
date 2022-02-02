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
//    @Binding var showMenu: Bool
//    @Binding var currentTab: CurrentTab
    
    var body: some View {
        NavigationView{
            GeometryReader{ geo in
                VStack{
                    ZStack{
                        
                        HStack(alignment: .center, spacing: nil, content: {
                            if showSearch{
                                TextField("Enter players' email...", text: $vm.playerName)
                                    .padding(.init(top: 4, leading: 10, bottom: 4, trailing: 10))
                                    .background(Color(.white).opacity(0.1))
                                    .cornerRadius(8)
                                    .padding(.horizontal,40)
                                    .autocapitalization(.none)
                                    .onChange(of: vm.playerName, perform: { value in
                                        let _ =  downloadingImagesOperations.compactMap({$0}).map{$0.cancel()}
                                        vm.searchPlayer()
                                    })
                                    .foregroundColor(.white)
                                    .accentColor(.white)
                            }else{
                                RDHeaderTitle(title: "Players")
                            }
                        }).padding(.horizontal)

                        HStack(alignment: .center, spacing: nil, content: {
                            Spacer()
                            Button(action: {
                                showSearch.toggle()
                            }, label: {
                                if showSearch{
                                    Image(systemName: "multiply")
                                        .font(.title2)
                                        .foregroundColor(Color("green"))
                                }else{
                                    Image(systemName: "magnifyingglass")
                                        .font(.title2)
                                        .foregroundColor(Color("green"))
                                }
                            })
                        }).padding(.horizontal)
                    }.padding(.bottom, 10)

                    Spacer()
                    if vm.playerName == ""{
                        VStack(alignment: .center, spacing: 20){
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
                    }else{
                        ScrollView{
                            ForEach(vm.players, id: \.self) { player in
                                
                                SearchPlayerRowView(player: player)
                                
                            }.padding()
                            .edgesIgnoringSafeArea(.bottom)
                        }
                        
                    }
                    
                    
                    Spacer()
                }.background(Color("bg").ignoresSafeArea(.all, edges: .all))
            }.searchable(text: $vm.playerName)
        }
        
    }
}

struct SearchPlayerRowView : View {
    let player : PlayerModel
    @ObservedObject var searchPlayerVM : SearchPlayerVM
    @State var isProfilePresented : Bool = false
    
    init(player : PlayerModel) {
        self.player = player
        self.searchPlayerVM = SearchPlayerVM(player: player)
    }
    
    
    
    var body: some View{
        
        HStack(alignment: .center){
            if let downloadedImage = searchPlayerVM.downloadedImage {
                Image(uiImage: downloadedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50, alignment: .center)
            }
            else {
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
            PlayerProfileView(playerModel: .init(uid: player.uid, name: player.name, gender: player.gender, imagePath: "", nationality: player.nationality , downloadedImage: searchPlayerVM.downloadedImage), searchVM: searchPlayerVM, profileIsPresented: $isProfilePresented)
        })
        
        
    }
}
