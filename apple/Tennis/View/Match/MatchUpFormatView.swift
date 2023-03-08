//
//  MatchUpFormatView.swift
//  Tennis
//
//  Created by Pranav Suri on 18/1/23.
//

import SwiftUI

struct MatchUpFormatView: View {
    @ObservedObject var vm = MatchUpVM()
    @State var buttonState = XelaButtonState.Default
    @State var tempText1 = ""
    @State var selectedId: Int = 0
    @State var selectedId1: Int = 0
    @State var selectedId2: Int = 0
    @State var selectedId3: Int = 5
    @State var selectedId4: Bool = false
    @State var selectedId5: Bool = false
    @State var selectedId6: Int = 0
    @State var selectedId7: Int = 0
    @State var selectedId8: Int = 0
    @State var selectedId9: Int = 0
    @State var selectedId10: Int = 0
    @State var selectedId11: Bool = false
    @State var tempText2 = ""
    @State var tempText3 = ""
    @State var tempText4 = ""
    @State var tempText5 = ""
    @State var tempText6 = ""
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Match Format")
                    .xelaHeadline()
                Spacer()
            }
            List{
                Section("Match Format") {
//                    Picker(selection: $vm.ma) {
//                        <#code#>
//                    } label: {
//                        <#code#>
//                    }
                    
                    Picker(selection: $vm.matchUpFormat.bestOf) {
//                        ForEach(NoOfSets.allCases, id: self) { <#Data.Element#> in
//                            <#code#>
//                        }
                        ForEach(NoOfSets.allCases) { noOfSets in
                            Text("\(noOfSets.value)")
                                .tag(noOfSets)
                        }
                    } label: {
                        Text("No. of sets")
                            .xelaBody()
                    }
                    Picker("test", selection: $vm.matchUpFormat.bestOf) {
                        ForEach(NoOfSets.allCases) { noOfSets in
                            Text("\(noOfSets.value)")
//                                .tag(noOfSets)
                        }
                    }
                    Picker(selection: $selectedId2) {
                        Text("Advantage").tag(0)
                        Text("No Ad").tag(1)
                    } label: {
                        Text("Ad / No Ad")
                            .xelaBody()
                    }
                    Picker(selection: $selectedId3) {
                        Text("1").tag(0)
                        Text("2").tag(1)
                        Text("3").tag(2)
                        Text("4").tag(3)
                        Text("5").tag(4)
                        Text("6").tag(5)
                        Text("7").tag(6)
                        Text("8").tag(7)
                        Text("9").tag(8)
                    } label: {
                        Text("No. of games")
                            .xelaBody()
                    }
                    Toggle(isOn: $selectedId4) {
                        Text("Tiebreak")
                            .xelaBody()
                    }
                    Toggle(isOn: $selectedId5) {
                        Text("Final Set")
                            .xelaBody()
                    }
                }
                if selectedId4{
                    Section("Tiebreak Format") {
                        Picker(selection: $selectedId6) {
                            Text("5").tag(0)
                            Text("7").tag(1)
                            Text("9").tag(2)
                            Text("10").tag(3)
                            Text("12").tag(4)
                        } label: {
                            Text("Tiebreak to")
                                .xelaBody()
                        }
                        Picker(selection: $selectedId7) {
                            Text("\(selectedId3)-\(selectedId3)").tag(0)
                            Text("\(selectedId3 + 1)-\(selectedId3 + 1)").tag(1)
                        } label: {
                            Text("Tiebreak at")
                                .xelaBody()
                        }
                        Picker(selection: $selectedId8) {
                            Text("1").tag(0)
                            Text("2").tag(1)
                        } label: {
                            Text("Win by")
                                .xelaBody()
                        }
                        
                    }
                }
                if selectedId5 {
                    Section("Final set format") {
                        Picker(selection: $selectedId9) {
                            Text("Ad").tag(0)
                            Text("No Ad").tag(1)
                        } label: {
                            Text("Ad / No Ad")
                                .xelaBody()
                        }
                        Picker(selection: $selectedId10) {
                            Text("1").tag(0)
                            Text("2").tag(1)
                            Text("3").tag(2)
                            Text("4").tag(3)
                            Text("5").tag(4)
                            Text("6").tag(5)
                            Text("7").tag(6)
                            Text("8").tag(7)
                            Text("9").tag(8)
                        } label: {
                            Text("No. of games")
                                .xelaBody()
                        }
                        Toggle(isOn: $selectedId11) {
                            Text("Tiebreak")
                                .xelaBody()
                        }
                        
                    }
                }
                if selectedId11 {
                    Section("Final set format") {
                        Text("Final Set Format")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .background(Color.clear)
            .modifier(ListBackgroundModifier())
            
            NavigationLink {
                Text("Player Details")
            } label: {
                XelaButton(text: "Test", state: $buttonState)
            }

        }
        //        .padding(.horizontal, 24)
        .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
        
    }
}
struct ListBackgroundModifier: ViewModifier {
    
    @ViewBuilder
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .scrollContentBackground(.hidden)
        } else {
            content
        }
    }
}
