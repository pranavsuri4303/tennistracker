//
//  NewBaseView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/12/22.
//

import SwiftUI

struct RDBaseView: View {
    @ObservedObject var vm = RDBaseViewVM()
    @State var showMenu: Bool = false
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0

    var body: some View {
        let sideBarWidth = getRect().width * 0.75
        HStack(spacing: 0, content: {
            SideMenuView(currentSelectedView: $vm.currentTab, showMenu: $showMenu)
            TabView(selection: $vm.currentTab) {
                RDNavigationView(showMenu: $showMenu) {
                    Text(Tabs.home.title())
                }
                .tabItem {
                    Label(Tabs.home.title(), systemImage: Tabs.home.imageName())
                    Image(systemName: Tabs.home.imageName())
                }
                .tag(Tabs.home)
                RDNavigationView(showMenu: $showMenu) {
                    PlayerSearchView()
                }
                .tabItem {
                    Label(Tabs.home.title(), systemImage: Tabs.search.imageName())
                }
                .tag(Tabs.search)
                RDNavigationView(showMenu: $showMenu) {
                    DashboardView()

                }.tabItem {
                    Label(Tabs.dashboard.title(), systemImage: Tabs.dashboard.imageName())
                }
                .tag(Tabs.dashboard)
                RDNavigationView(showMenu: $showMenu) {
                    StringsListView()
                }.tabItem {
                    Label(Tabs.tennis.title(), systemImage: Tabs.tennis.imageName())
                }
                .tag(Tabs.tennis)
                RDNavigationView(showMenu: $showMenu) {
                    ProfileView()
                }.tabItem {
                    Label(Tabs.profile.title(), systemImage: Tabs.profile.imageName())
                }
                .tag(Tabs.profile)
            }
            .overlay(Rectangle()
                .fill(Color.primary.opacity(Double((offset / sideBarWidth) / 5)))
                .ignoresSafeArea(.container, edges: .vertical)
                .onTapGesture {
                    withAnimation { showMenu.toggle() }

                })
        })
        .environmentObject(vm)
        .frame(width: getRect().width + sideBarWidth)
        .offset(x: -sideBarWidth / 2)
        .offset(x: offset > 0 ? offset : 0)
        .gesture(DragGesture()
            .updating($gestureOffset, body: { value, out, _ in
                out = value.translation.width
            })
            .onEnded(onEnd(value:)))
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
}

extension RDBaseView {
    func onChange() {
        let sideBarWidth = getRect().width * 0.75
        offset = (gestureOffset != 0) ? ((gestureOffset + lastStoredOffset) < sideBarWidth ? (gestureOffset + lastStoredOffset) : offset) : offset
        offset = (gestureOffset + lastStoredOffset) > 0 ? offset : 0
    }

    func onEnd(value: DragGesture.Value) {
        let sideBarWidth = getRect().width * 0.75
        let translation = value.translation.width

        withAnimation {
            if translation > 0 {
                if translation > (sideBarWidth / 2) {
                    offset = sideBarWidth
                    showMenu = true
                } else {
                    if offset == sideBarWidth || showMenu {
                        return
                    }
                    offset = 0
                    showMenu = false
                }
            } else {
                if -translation > (sideBarWidth / 2) {
                    offset = 0
                    showMenu = false
                } else {
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

struct NewBaseView_Previews: PreviewProvider {
    static var previews: some View {
        RDBaseView()
    }
}
