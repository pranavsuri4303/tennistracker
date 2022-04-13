//
//  AddMatchView.swift
//  Tennis
//
//  Created by Pranav Suri on 13/4/22.
//

import SwiftUI

import SwiftUI

struct AddMatchView: View {
    @EnvironmentObject var baseVM : BaseViewVM
    @State var p1Name = ""
    @State var p2Name = ""
    
    @State var noSets = ""
    @State var selectedSetsIndex = -1
    
    @State var noGames = "0"
    @State var selectedGamesIndex = 0
    @State var withTiebreak = -1
    @State var selectedServer = PlayerType.initial
    
    @State var playTill = ""
    @State var playTillIndex = 0
    
    var body: some View {
        VStack(spacing: 8) {
            VStack(alignment: .leading) {
                Text("New Match")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
            }
            Group{
                RDTextField(placeholder: "Player 1 Name", text: $p1Name, imageName: "1.circle", isSecure: false, isPicker: false)
                RDTextField(placeholder: "Player 2 Name", text: $p2Name, imageName: "2.circle", isSecure: false, isPicker: false)
            }
            HStack(){
                Text("Server")
                Spacer()

                Picker(selection: $selectedServer) {
                    Text("\(p1Name)")
                        .tag(PlayerType.p1)
                        .foregroundColor(.white)
                    Text("\(p2Name)")
                        .tag(PlayerType.p2)
                        .foregroundColor(.white)
                } label: {
                    EmptyView()
                }
                .pickerStyle(.segmented)
            }
            .padding(.horizontal)
            .disabled(p1Name == "" || p2Name == "" ? true : false)
            Group{
                Picker(selection: $selectedSetsIndex) {
                    Text("Single set")
                        .tag(0)
                    Text("Best of 3")
                        .tag(1)
                    Text("Best of 5")
                        .tag(2)
                } label: {
                    EmptyView()
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .onChange(of: selectedSetsIndex) { change in
                    noGames = ""
                    selectedGamesIndex = 0
                }
                if selectedSetsIndex == 0{
                    RDTextField(placeholder: "Number of games...",
                                text: $noGames,
                                imageName: "g.circle",
                                isSecure: false,
                                isPicker: true,
                                data: ["4", "6", "10"],
                                selectionIndex: selectedGamesIndex)
                } else{
                    RDTextField(placeholder: "Number of games...",
                                text: $noGames,
                                imageName: "g.circle",
                                isSecure: false,
                                isPicker: true,
                                data: ["4", "6"],
                                selectionIndex: selectedGamesIndex)
                }
                
            }

            HStack(){
                Text("Tiebreak")
                Spacer()
                Picker(selection: $withTiebreak) {
                    Text("Yes")
                        .tag(0)
                        .foregroundColor(.white)
                    Text("No")
                        .tag(1)
                        .foregroundColor(.white)
                } label: {
                    EmptyView()
                }
                .pickerStyle(.segmented)
            }.padding(.horizontal)
        }
        RDTextField(placeholder: "Play till...",
                    text: $playTill,
                    imageName: "infinity.circle",
                    isSecure: false,
                    isPicker: true,
                    data: ["4", "5", "6", "∞"],
                    selectionIndex: playTillIndex)
        Spacer()
    }
}

struct AddMatchView_Previews: PreviewProvider {
    static var previews: some View {
        NewMatchView()
    }
}
