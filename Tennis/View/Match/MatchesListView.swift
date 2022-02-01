//
//  MatchesHistoryView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import SwiftUI

struct MatchesHistoryView: View {
    @State var showAddMatch = false

    var body: some View {
        ZStack{
            GeometryReader{ geo in
                VStack{
                    ZStack{
                        RDHeader(title: "Matches")
                        HStack{
                            Spacer()
                            RDBadgeButton(systemImageTitle: "plus.circle",
                                              action: { self.showAddMatch.toggle() })
                                .sheet(isPresented: $showAddMatch) { NewMatchView() }
                        }.padding(.horizontal)
                        

                    }.padding(.bottom, 10)
                    
                    Spacer()
                }.background(Color("bg").ignoresSafeArea(.all, edges: .all))
            }
        }
    }
}


struct MatchesHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MatchesHistoryView()
            MatchesHistoryView()
        }
    }
}
