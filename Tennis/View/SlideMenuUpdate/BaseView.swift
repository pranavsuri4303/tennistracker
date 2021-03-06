//
//  BaseView.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct BaseView: View {
    @State var currentTab: CurrentTab = .profile
    @State var showMenu: Bool = false
    
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    @GestureState var gestureOffset: CGFloat = 0
    
    @StateObject var vm = BaseViewVM()
    
    var body: some View {
        let sideBarWidth = getRect().width - 90
        
        VStack {
            HStack(spacing: 0) {
                SideMenuView(currentSelectedView: $currentTab, showMenu: $showMenu)
                    .environmentObject(vm)
                NavigationView{
                    VStack{
                        switch currentTab {
                        case .string: StringsListView()
                        case .profile: ProfileView()
                        case .dashboard: DashboardView()
                        case .players: PlayerSearchView()
                        case .matches: MatchesHistoryView()
                        case .friends: FriendsListView()
                        case .clubs: ClubsView()
                        }
                    }
                    .environmentObject(vm)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarLeading) {
                            RDBadgeButton(systemImageTitle: "line.horizontal.3") {
                                showMenu.toggle()
                            }
                        }
                    })
                    .navigationBarTitle("\(currentTab.rawValue)")
                    .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
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
        .onAppear {
            vm.fetchUserData()
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
