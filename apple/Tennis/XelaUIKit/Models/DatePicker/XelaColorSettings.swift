//
//  XelaColorSettings.swift
//  XelaExampleApp
//
//  Created by Sherhan on 06.08.2021.
//

import SwiftUI
struct XelaColorSettings {
    // foreground colors
    @State var textColor: Color = .init(asset: Colors.tfDefaultValue)
    var todayColor: Color = .init(asset: Colors.buttonPrimaryDefaultFill)
    var selectedColor: Color = .init(asset: Colors.buttonPrimaryDefaultForeground)
    var disabledColor: Color = .init(asset: Colors.tfDisabledValue)
    var betweenStartAndEndColor: Color = .init(xelaColor: .Gray3)
    // background colors
    var textBackgroundColor: Color = .clear
    var todayBackgroundColor: Color = .init(asset: Colors.tfDefaultFill)
    var selectedBackgroundColor: Color = .init(asset: Colors.buttonPrimaryDefaultFill)
    var disabledBackgroundColor: Color = .init(asset: Colors.tfDisabledFill)
    var betweenStartAndEndBackgroundColor: Color = .init(xelaColor: .Blue8)
    // headers foreground colors
    var weekdayHeaderColor: Color = .init(asset: Colors.tfDefaultPlaceholder)
    var monthHeaderColor: Color = .init(asset: Colors.tfDefaultValue)
    var yearHeaderColor: Color = .init(asset: Colors.tfDefaultValue)
    // headers background colors
    var weekdayHeaderBackgroundColor: Color = .clear
    var monthBackgroundColor: Color = .clear
    // next & prev button colors
    var changeMonthButtonBackground: Color = .clear
    var changeMonthButtonForeground: Color = .init(asset: Colors.tfDefaultValue)

    var dividerColor: Color = .init(asset: Colors.tfDefaultPlaceholder)
}
