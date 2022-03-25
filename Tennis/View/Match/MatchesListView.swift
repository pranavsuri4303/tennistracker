//
//  MatchesHistoryView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import SwiftUI

struct MatchesHistoryView: View {
    @State var showAddMatch = false
    @Binding var showMenu: Bool
    @Binding var currentTab: CurrentTab

    var body: some View {
        VStack {
            RDHeader(title: currentTab.rawValue,
                     leftBarButton: RDBadgeButton(systemImageTitle: "line.horizontal.3",
                                                  action: { showMenu.toggle() }),
                     rightBarButton: RDBadgeButton(systemImageTitle: "plus",
                                                   action: { showAddMatch.toggle() }))
                .sheet(isPresented: $showAddMatch) { NewMatchView() }

            Spacer()
        }.background(Color("bg").ignoresSafeArea(.all, edges: .all))
    }
}
