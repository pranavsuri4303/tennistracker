//
//  XelaSegmentedControll.swift
//  XelaExampleApp
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct XelaSegmentedControll: View {
    var items: [XelaSegmentedControllItem]
    @Binding var selectedId: Int
    var primaryBackground: Color = .init(xelaColor: .Blue6)
    var secondaryBackground: Color = .init(xelaColor: .Gray12)
    var primaryFontColor: Color = .init(.white)
    var secondaryFontColor: Color = .init(xelaColor: .Gray2)
    var autoResize: Bool = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if !autoResize {
                    HStack(spacing: 0) {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(primaryBackground)
                            .frame(width: geometry.size.width / CGFloat(items.count), height: 46)
                            .offset(x: (geometry.size.width / CGFloat(items.count)) * CGFloat(selectedId))

                        Spacer()
                    }
                }

                HStack {
                    if autoResize {
                        Spacer()
                    }
                    HStack(spacing: 8) {
                        ForEach(items) { item in
                            XelaSegmentedControllButton(item: item, selectedId: $selectedId, primaryBackground: primaryBackground, secondaryBackground: secondaryBackground, primaryFontColor: primaryFontColor, secondaryFontColor: secondaryFontColor, autoResize: autoResize)
                        }
                    }
                    .background(autoResize ? secondaryBackground : Color.clear)
                    .cornerRadius(12)
                    if autoResize {
                        Spacer()
                    }
                }
            }
            .background(!autoResize ? secondaryBackground : Color.clear)
            .cornerRadius(12)
        }
        .frame(height: 46)
    }
}
