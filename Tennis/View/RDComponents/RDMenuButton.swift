//
//  RDMenuButton.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct RDMenuButton: View {
    @Binding var currentTab: CurrentTab
    @Binding var showMenu: Bool
    var title: String
    var menuItemTab: CurrentTab

    var body: some View {
        HStack(spacing: 15) {
            // both title and image names are same....
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24, alignment: .center)
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(.gray)
            Text(title)
                .foregroundColor(.white)

            Spacer(minLength: 0)
        }
        .padding(.vertical, 12)
        .onTapGesture {
            currentTab = menuItemTab
            showMenu = false
        }
    }
}
