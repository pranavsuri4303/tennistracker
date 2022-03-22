//
//  BaseView.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct Home: View {
    
    @State var currentTab : CurrentTab = .profile
    @State var showMenu: Bool = false
    
    // Offset for Both Drag Gesuture and showing Menu...
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    // GEsture Offset...
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View {
        
        let sideBarWidth = getRect().width - 90
        
        // Whole Navigation View....
        VStack{
            
            HStack(spacing: 0){
                // Side Menu..
                SideMenu(currentSelectedView: $currentTab, showMenu: $showMenu)
//                SideMenu(showMenu: $showMenu)

                VStack(spacing: 0){
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        switch currentTab {
                        case .string : StringsListView()
                        case .profile : ProfileView(showMenu: $showMenu, currentTab: $currentTab)
                        case .dashboard : DashboardView(showMenu: $showMenu, currentTab: $currentTab)
                        case .players : PlayersSearchView()
                        case .matches : MatchesHistoryView(showMenu: $showMenu, currentTab: $currentTab)
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
                                withAnimation{ showMenu.toggle() }
                    
                })
            }
            // max Size...
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            // Gesture...
            .gesture(DragGesture()
                        .updating($gestureOffset, body: { value, out, _ in
                            out = value.translation.width})
                        .onEnded(onEnd(value:)))
            // No Nav bar title...
            // Hiding nav bar...
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .background(Color("bg"))
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu) { newValue in
            // Preview issues...
            if showMenu && offset == 0{
                offset = sideBarWidth
                lastStoredOffset = offset
            }
            if !showMenu && offset == sideBarWidth{
                offset = 0
                lastStoredOffset = 0
            }
        }
        .onChange(of: gestureOffset) { newValue in
            onChange()
        }
    }
    
    func onChange(){
        let sideBarWidth = getRect().width - 90
        offset = (gestureOffset != 0) ? ((gestureOffset + lastStoredOffset) < sideBarWidth ? (gestureOffset + lastStoredOffset) : offset) : offset
        offset = (gestureOffset + lastStoredOffset) > 0 ? offset : 0
    }
    
    func onEnd(value: DragGesture.Value){
        let sideBarWidth = getRect().width - 90
        let translation = value.translation.width
        
        withAnimation{
            // Checking...
            if translation > 0{
                if translation > (sideBarWidth / 2){
                    // showing menu...
                    offset = sideBarWidth
                    showMenu = true
                }
                else{
                    // Extra cases...
                    if offset == sideBarWidth || showMenu{
                        return
                    }
                    offset = 0
                    showMenu = false
                }
            }
            else{
                if -translation > (sideBarWidth / 2){
                    offset = 0
                    showMenu = false
                }
                else{
                    if offset == 0 || !showMenu{
                        return
                    }
                    offset = sideBarWidth
                    showMenu = true
                }
            }
        }
        // storing last offset...
        lastStoredOffset = offset
    }
    

}

//struct BaseView_Previews: PreviewProvider {
//    static var previews: some View {
//        BaseView()
//    }
//}
