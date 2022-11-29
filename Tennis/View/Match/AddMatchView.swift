//
//  AddMatchView.swift
//  Tennis
//
//  Created by Pranav Suri on 13/4/22.
//

import SwiftUI

import SwiftUI

struct AddMatchView: View {
    @EnvironmentObject var baseVM: BaseViewVM
    @State var p1Name = ""
    @State var p2Name = ""
    @State private var p1Other = false
    @State private var p2Other = false

    @State var noSets = ""
    @State var noGames = ""
    @State var selectedSetsIndex = -1
    @State var selectedGamesIndex = -1
    @State var withTiebreak = -1
    @State var tiebreakPts = -1

    @State var selectedServer = PlayerType.none
    @State var trackingStyle = TrackingType.none

    @State var playTill = ""
    @State var playTillIndex = 0

    @Binding var newMatchViewPresented: Bool

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 8) {
                    //            RDHeader(title: "New Match", leftBarButton: RDBadgeButton(systemImageTitle: "xmark.circle", action: { newMatchViewPresented.toggle() }))

                    // MARK: Player Names

                    VStack(spacing: 8) {
                        RDTextField(placeholder: "Player 1 Name", text: $p1Name, imageName: "1.circle", isSecure: false, isPicker: false)
                        // Add other player button here for Player 1
                        RDTextField(placeholder: "Player 2 Name", text: $p2Name, imageName: "2.circle", isSecure: false, isPicker: false)
                        // Add other player button here for Player 2
                    }.padding(.horizontal)

                    // MARK: Server

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Server")
                            .font(.headline)
                        Picker(selection: $selectedServer, label: Text(""), content: {
                            Text("\(p1Name)")
                                .tag(PlayerType.p1)
                                .foregroundColor(.white)
                            Text("\(p2Name)")
                                .tag(PlayerType.p2)
                                .foregroundColor(.white)
                        })
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                        .disabled(p1Name == "" || p2Name == "" ? true : false)
                    }
                    .padding(10)
                    .background(.white.opacity(selectedServer == PlayerType.none ? 0.04 : 0.12))
                    .cornerRadius(12)
                    .padding(.horizontal)

                    // MARK: No of sets

                    VStack(alignment: .leading, spacing: 5) {
                        Text("No. of sets")
                            .font(.headline)
                        Picker(selection: $selectedSetsIndex, label: Text(""), content: {
                            Text("Single set").tag(0)
                            Text("Best of 3").tag(1)
                            Text("Best of 5").tag(2)
                        })
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                        .onChange(of: selectedSetsIndex) { _ in
                            noGames = ""
                            selectedGamesIndex = -1
                        }
                    }
                    .padding(10)
                    .background(.white.opacity(selectedSetsIndex == -1 ? 0.04 : 0.12))
                    .cornerRadius(12)
                    .padding(.horizontal)

                    // MARK: No of games

                    VStack(alignment: .leading, spacing: 5) {
                        Text("No. of games")
                            .font(.headline)
                        Picker(selection: $selectedGamesIndex, label: Text(""), content: {
                            Text("4 Games").tag(0)
                            Text("6 Games").tag(1)
                            if selectedSetsIndex == 0 {
                                Text("10 Games").tag(2)
                            }
                        })
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                    }
                    .padding(10)
                    .background(.white.opacity(selectedGamesIndex == -1 ? 0.04 : 0.12))
                    .cornerRadius(12)
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Tiebreak")
                            .font(.headline)
                        Picker(selection: $withTiebreak, label: Text(""), content: {
                            Text("Yes").tag(0)
                                .foregroundColor(.white)
                            Text("No").tag(1)
                                .foregroundColor(.white)
                        })
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                        .onChange(of: withTiebreak) { _ in
                            tiebreakPts = -1
                        }
                        if withTiebreak == 0 {
                            Picker(selection: $tiebreakPts, label: Text(""), content: {
                                Text("7 Points").tag(0)
                                    .foregroundColor(.white)
                                Text("10 Points").tag(1)
                                    .foregroundColor(.white)
                            })
                            .pickerStyle(.segmented)
                            .padding(.horizontal)
                        }
                    }
                    .padding(10)
                    .background(.white.opacity((withTiebreak != -1 && tiebreakPts != -1) || withTiebreak == 1 ? 0.12 : 0.04))
                    .cornerRadius(12)
                    .padding(.horizontal)

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Tracking Style")
                            .font(.headline)
                        Picker(selection: $trackingStyle, label: Text(""), content: {
                            Text("Basic").tag(TrackingType.basic)
                            Text("Advanced").tag(TrackingType.advanced)
                            Text("Advanced").tag(TrackingType.expert)
                        })
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                    }
                    .padding(10)
                    .background(.white.opacity(trackingStyle == .none ? 0.04 : 0.12))
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
            }
            .navigationBarTitle("New Match")
            .background(Color("bg"))
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    RDBadgeButton(systemImageTitle: "xmark.circle",
                                  action: { newMatchViewPresented.toggle() })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    RDBadgeButton(systemImageTitle: "play",
                                  action: { print("Start Match pressed") })
                }
            })
        }
    }
}

struct AddMatchView_Previews: PreviewProvider {
    static var previews: some View {
        NewMatchView()
    }
}
