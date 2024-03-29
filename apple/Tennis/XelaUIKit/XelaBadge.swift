//
//  XelaBadge.swift
//  XelaExampleApp
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct XelaBadge: View {
    @Binding var text: String
    var background: Color = .init(xelaColor: .Blue3)
    var foregroundColor: Color = .init(.white)
    var body: some View {
        Text(text)
            .xelaCaption()
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(foregroundColor)
            .background(background)
            .cornerRadius(10)
    }
}
