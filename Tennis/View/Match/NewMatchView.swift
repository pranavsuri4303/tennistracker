//
//  NewMatchView.swift
//  Tennis
//
//  Created by Pranav Suri on 29/1/21.
//

import SwiftUI

struct NewMatchView: View {
    @State var friendsVM = FriendsVM()
    @EnvironmentObject var baseVM: BaseViewVM
    @ObservedObject var vm = MatchVM()
    @State var matchScorerIsPresented = false
    @State var selectionP1 = 0
    @State var selectionP2 = 0
    
    @State private var p1Other = false
    @State private var p2Other = false
    var body: some View {
        VStack(spacing: 15) {
            VStack(alignment: .leading) {
                Text("New Match")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
            }
            if p1Other{
                RDTextField(placeholder: "Player 1 Name", text: $vm.P1.name, imageName: "1.circle", isSecure: false, isPicker: false)
            } else{
                RDTextField(placeholder: "Select Player 1", text: $vm.P1.name, imageName: "1.circle", isSecure: false, isPicker: true, data: (baseVM.userData?.friends)!.map({ $0.name }), selectionIndex: selectionP1)
            }
            
            VStack(alignment: .center) {
                Button(action: {
                    self.p1Other.toggle()
                    vm.P1.name = ""
                }, label: {
                    if p1Other {
                        Text("Recording for yourself or a friend?")
                            .font(.subheadline)
                    } else {
                        Text("Recording for someone else?")
                            .font(.subheadline)
                    }
                })
            }
            
            if p2Other{
                RDTextField(placeholder: "Player 2 Name", text: $vm.P2.name, imageName: "2.circle", isSecure: false, isPicker: false)
            } else{
                RDTextField(placeholder: "Select Player 2", text: $vm.P2.name, imageName: "2.circle", isSecure: false, isPicker: true, data: friendsVM.friendsListP2, selectionIndex: selectionP2)
            }
            VStack(alignment: .center) {
                Button(action: {
                    self.p2Other.toggle()
                    vm.P2.name = ""
                }, label: {
                    if p2Other {
                        Text("Player in your friends list?")
                            .font(.subheadline)
                    } else {
                        Text("Player outside your friends list?")
                            .font(.subheadline)
                    }
                })
            }
            
            //                    HStack {
            //                        Text("Server")
            //                            .foregroundColor(.white)
            //                        Spacer()
            //                        Picker(selection: $vm.server, label: Text(""), content: {
            //                            Text("\(vm.P1.name)")
            //                                .tag(PlayerType.p1)
            //                                .foregroundColor(.white)
            //                            Text("\(vm.P2.name)")
            //                                .tag(PlayerType.p2)
            //                                .foregroundColor(.white)
            //
            //                        })
            //                        .pickerStyle(SegmentedPickerStyle())
            //                    }.padding(.horizontal)
            
            Picker(selection: $vm.deuceType, label: Text(""), content: {
                Text("Deuce")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .tag(DeuceType.deuce)
                Text("Sudden death").tag(DeuceType.noDeuce)
                    .foregroundColor(.white)
                Text("One Deuce").foregroundColor(Color(.white)).tag(DeuceType.oneDeuce)
            }).pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
            Picker(selection: $vm.trackingStyle, label: Text(""), content: {
                Text("Basic")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .tag(TrackingType.basic)
                Text("Advanced").tag(TrackingType.advanced)
                    .foregroundColor(.white)
                Text("Expert").foregroundColor(Color(.white)).tag(TrackingType.expert)
            }).pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
            HStack {
                Text("1 Set: First to 6 Games")
                    .foregroundColor(.white)
                //                        Spacer()
                //                        Picker(selection: $vm.noOfSets, label: Text(""), content: {
                //                                Text("1")
                //                                    .foregroundColor(.white)
                //                                    .multilineTextAlignment(.center)
                //                                    .tag(1)
                //                                Text("3").tag(3)
                //                                    .foregroundColor(.white)
                //                        }).pickerStyle(SegmentedPickerStyle())
            }.padding(.horizontal)
            
            Spacer()
            RDButton(withTitle: "Start Match",
                     performAction: { matchScorerIsPresented.toggle() })
            .fullScreenCover(isPresented: $matchScorerIsPresented, content: {
                if vm.trackingStyle == .basic {
                    BasicMatchScoringView(isPresented: $matchScorerIsPresented, vm: vm)
                } else if vm.trackingStyle == .advanced {
                    AdvancedMatchScoringView(isPresented: $matchScorerIsPresented, vm: vm)
                } else {
                    ExpertMatchScoringView(isPresented: $matchScorerIsPresented, vm: vm)
                }
                
            })
            .opacity(vm.P2.name == "" || vm.P1.name == "" || vm.P1.name == vm.P2.name ? 0.5 : 1)
            .disabled(vm.P2.name == "" || vm.P1.name == "" || vm.P1.name == vm.P2.name ? true : false)
            .alert(isPresented: $vm.alert, content: {
                Alert(title: Text("Error"), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
            })
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        if vm.isLoading {
            LoadingScreenView()
        }
    }
}

struct NewMatchView_Previews: PreviewProvider {
    static var previews: some View {
        NewMatchView()
    }
}

struct Friends {
    var list = ["",
                "Aldrin",
                "Jemma"]
    var list2 = ["You",
                 "Aldrin",
                 "Jemma"]
}
