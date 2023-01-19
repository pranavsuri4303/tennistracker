//
//  PlayerSearchView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import SwiftUI
struct SearchView: View {
    @State var currentSearchTab = 0
    @State var isLoading = true
    @StateObject var vm = PlayersVM()
    @State var showProfile = false
    var body: some View {
        VStack{
            XelaTabs(items: [XelaTabsItem(id: 0, label: "Players", icon: "", badgeText: ""),
                             XelaTabsItem(id: 1, label: "Clubs", icon: "", badgeText: ""),
                             XelaTabsItem(id: 2, label: "Matches", icon: "", badgeText: "")],
                     selectedId: $currentSearchTab)
            if currentSearchTab == 0 {
                PlayersSearchListView()
            } else if currentSearchTab == 1 {
                ClubsSearchListView()
            } else if currentSearchTab == 2 {
                Text("Matches")
                    .xelaHeadline()
            }
            Spacer()
        }
        .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("Filter Button Pressed")
                } label: {
                    Image(asset: Icons.adjustVerticalAlt )
                }
            }
        })

        
    }
}


enum CurrentSearchTab {
    case users
    case tournaments
    case clubs
    case matches
    case news
}
