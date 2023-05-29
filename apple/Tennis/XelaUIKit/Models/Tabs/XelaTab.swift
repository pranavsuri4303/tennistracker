//
//  XelaTab.swift
//  XelaExampleApp
//
//  Created by Pranav Suri on 05.08.2021.
//

import SwiftUI

struct XelaTab: View {
    var item: XelaTabsItem
    @Binding var selectedId: Int
    var primaryColor: Color = .init(xelaColor: .Blue6)
    var secondaryColor: Color = .init(xelaColor: .Gray6)
    var badgeBackground: Color = .init(xelaColor: .Orange3)
    var badgeTextColor: Color = .init(.white)

    var badgeBackgroundSelected: Color = .init(xelaColor: .Orange3)
    var badgeTextColorSelected: Color = .init(.white)

    var body: some View {
        HStack() {
            Spacer()
            if !item.icon.isEmpty {
                Image(item.icon)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundColor(item.id == selectedId ? primaryColor : secondaryColor)
                 .padding(.trailing, item.label.isEmpty ? 0 : 4)
            }
            if !item.label.isEmpty {
                Text(item.label)
                    .xelaButtonMedium()
                    .foregroundColor(item.id == selectedId ? primaryColor : secondaryColor)
                    .lineLimit(nil)
                    .padding(.horizontal, 4)
            }
            if !item.badgeText.isEmpty {
                HStack {
                    Text(item.badgeText)
                        .xelaButtonMedium()
                        .foregroundColor(item.id == selectedId ? badgeTextColorSelected : badgeTextColor)
                }
                .frame(minWidth: 12)
                .frame(height: 12)
                .background(item.id == selectedId ? badgeBackgroundSelected : badgeBackground)
                .cornerRadius(6)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
        .contentShape(Rectangle())
        // .cornerRadius(12)
        .onTapGesture {
            withAnimation {
                selectedId = item.id
            }
        }
    }

    func getPadding() -> CGFloat {
        return 0
    }
}
