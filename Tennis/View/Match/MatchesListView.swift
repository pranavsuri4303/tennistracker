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
        ZStack {
            GeometryReader { _ in
                VStack {
                    RDHeader(showMenu: $showMenu, title: currentTab.rawValue, rightBarButton: RDBadgeButton(imageTitle: "Matches", action: { self.showAddMatch.toggle() }))

                    Spacer()
                }.background(Color("bg").ignoresSafeArea(.all, edges: .all))
            }
        }
    }
}
