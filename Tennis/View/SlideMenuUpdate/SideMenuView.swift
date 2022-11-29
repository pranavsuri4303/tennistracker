//
//  SideMenu.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import FirebaseAuth
import SwiftUI

struct SideMenuView: View {
    @Binding var currentSelectedView: CurrentTab
    @Binding var showMenu: Bool
    @AppStorage("status") var logged = false
    @EnvironmentObject var vm: BaseViewVM

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 15) {
                VStack(alignment: .center) {
                    ZStack {
                        Circle()
                            .foregroundColor(Color(.white).opacity(0.3))
                            .frame(width: 80, height: 80, alignment: .center)
                        Image("logo")
                            .resizable()
                            .frame(width: 70, height: 70, alignment: .center)
                            .clipShape(Circle())

                    }.frame(alignment: .center)
                }
                Text(vm.userData?.firstName ?? "User")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Divider()
                    .frame(height: 10)

                ForEach(menuButtons, id: \.self) { menu in
                    RDMenuButton(currentTab: $currentSelectedView, showMenu: $showMenu, title: menu.rawValue, menuItemTab: menu)
                }
                Spacer()
                Button(action: {
                    try! Auth.auth().signOut()
                    withAnimation { logged = false }
                }) {
                    Text("Log out")
                        .foregroundColor(Color("green"))
                        .padding(.bottom)
                }.padding(.top, 20)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        // Max Width...
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// Extending View to get SCreen Rect...
extension View {
    func getRect() -> CGRect {
        UIScreen.main.bounds
    }

    func safeArea() -> UIEdgeInsets {
        let null = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return null
        }

        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return null
        }

        return safeArea
    }
}

var menuButtons: [CurrentTab] {
    let all = CurrentTab.allCases
    return all
}
