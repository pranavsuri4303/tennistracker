//
//  BaseView.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct Home: View {
    @State var currentTab: CurrentTab = .profile
    @State var showMenu: Bool = false
    
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View {
        let sideBarWidth = getRect().width - 90
        
        VStack {
            HStack(spacing: 0) {
                SideMenu(currentSelectedView: $currentTab, showMenu: $showMenu)

                VStack(spacing: 0) {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        switch currentTab {
                        case .string: StringsListView(showMenu: $showMenu, currentTab: $currentTab)
                        case .profile: ProfileView(showMenu: $showMenu, currentTab: $currentTab)
                        case .dashboard: DashboardView(showMenu: $showMenu, currentTab: $currentTab)
                        case .players: PlayersSearchView()
                        case .matches: MatchesHistoryView(showMenu: $showMenu, currentTab: $currentTab)
                        case .friends: FriendsListView(showMenu: $showMenu, currentTab: $currentTab)
                        case .clubs: ClubsView()
                        }
                    }
                }
                .frame(width: getRect().width)
                .overlay(Rectangle()
                    .fill(Color.primary.opacity(Double((offset / sideBarWidth) / 5)))
                    .ignoresSafeArea(.container, edges: .vertical)
                    .onTapGesture {
                        withAnimation { showMenu.toggle() }
                    
                    })
            }
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            .gesture(DragGesture()
                .updating($gestureOffset, body: { value, out, _ in
                    out = value.translation.width
                })
                .onEnded(onEnd(value:)))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .background(Color("bg"))
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu) { _ in
            // Preview issues...
            if showMenu, offset == 0 {
                offset = sideBarWidth
                lastStoredOffset = offset
            }
            if !showMenu, offset == sideBarWidth {
                offset = 0
                lastStoredOffset = 0
            }
        }
        .onChange(of: gestureOffset) { _ in
            onChange()
        }
    }
    
    func onChange() {
        let sideBarWidth = getRect().width - 90
        offset = (gestureOffset != 0) ? ((gestureOffset + lastStoredOffset) < sideBarWidth ? (gestureOffset + lastStoredOffset) : offset) : offset
        offset = (gestureOffset + lastStoredOffset) > 0 ? offset : 0
    }
    
    func onEnd(value: DragGesture.Value) {
        let sideBarWidth = getRect().width - 90
        let translation = value.translation.width
        
        withAnimation {
            if translation > 0 {
                if translation > (sideBarWidth / 2) {
                    offset = sideBarWidth
                    showMenu = true
                }
                else {
                    if offset == sideBarWidth || showMenu {
                        return
                    }
                    offset = 0
                    showMenu = false
                }
            }
            else {
                if -translation > (sideBarWidth / 2) {
                    offset = 0
                    showMenu = false
                }
                else {
                    if offset == 0 || !showMenu {
                        return
                    }
                    offset = sideBarWidth
                    showMenu = true
                }
            }
        }
        lastStoredOffset = offset
    }
}
