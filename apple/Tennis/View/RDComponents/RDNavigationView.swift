//
//  RDNavigationView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/12/22.
//

import SwiftUI

struct RDNavigationView<Content: View>: View {
    @Binding var showMenu: Bool
    @ViewBuilder var content: Content
    @EnvironmentObject var baseVM: RDBaseViewVM

    var body: some View {
        let sideBarWidth = getRect().width * 0.75
        NavigationView {
            content
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            showMenu.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                })
                .navigationBarTitle("\(baseVM.currentTab.rawValue)")
                .navigationBarTitleDisplayMode(.inline)
        }
        .background(Color(asset: Colors.background).ignoresSafeArea(.all))
        .frame(width: getRect().width)
    }
}

// struct RDNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        RDNavigationView()
//    }
// }
