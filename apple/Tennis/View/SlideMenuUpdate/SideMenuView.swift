//
//  SideMenu.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import FirebaseAuth
import SwiftUI

struct SideMenuView: View {
    @Binding var currentSelectedView: Tabs
    @Binding var showMenu: Bool
    @AppStorage("status") var logged = false
    @EnvironmentObject var vm: RDBaseViewVM

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
                Text(vm.personData?.standardGivenName ?? "User")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
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
        .frame(width: getRect().width * 0.75)
        .frame(maxHeight: .infinity)
    }
}

var menuButtons: [Tabs] {
    let all = Tabs.allCases
    return all
}
