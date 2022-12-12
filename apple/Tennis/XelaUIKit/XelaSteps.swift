//
//  XelaSteps.swift
//  XelaExampleApp
//
//  Created by Sherhan on 04.08.2021.
//

import SwiftUI

struct XelaSteps: View {
    @StateObject var steps: XelaStepsItems
    var orientation: XelaStepsOrientation

    var primaryTextColor: Color = .init(xelaColor: .Gray3)
    var secondaryTextColor: Color = .init(xelaColor: .Gray7)
    var primaryAccentColor: Color = .init(xelaColor: .Blue3)
    var secondaryAccentColor: Color = .init(xelaColor: .Blue11)
    var secondaryColor: Color = .init(xelaColor: .Gray11)
    var errorColor: Color = .init(xelaColor: .Red3)
    var iconColor: Color = .init(.white)

    var lines: Bool = true

    var body: some View {
        VStack {
            if orientation == .Horizontal {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(steps.items) { step in
                        XelaStep(item: step, orientation: orientation, items: steps.items, primaryTextColor: primaryTextColor, secondaryTextColor: secondaryTextColor, primaryAccentColor: primaryAccentColor, secondaryAccentColor: secondaryAccentColor, secondaryColor: secondaryColor, errorColor: errorColor, iconColor: iconColor, lines: lines)
                    }
                }
            } else {
                VStack(alignment: .leading, spacing: lines ? 0 : 16) {
                    ForEach(steps.items) { step in
                        XelaStep(item: step, orientation: orientation, items: steps.items, primaryTextColor: primaryTextColor, secondaryTextColor: secondaryTextColor, primaryAccentColor: primaryAccentColor, secondaryAccentColor: secondaryAccentColor, secondaryColor: secondaryColor, errorColor: errorColor, iconColor: iconColor, lines: lines)
                    }
                }
            }
        }
        .onAppear {
            var bool = false
            for item in steps.items {
                if item.state == .Active {
                    bool = true
                }
            }

            if !bool {
                steps.items[0].state = .Active
                steps.objectWillChange.send()
            }
        }
    }
}
