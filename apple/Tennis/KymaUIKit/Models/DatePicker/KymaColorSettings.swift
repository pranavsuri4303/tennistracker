//
//  KymaColorSettings.swift
//  
//
//  Created by Pranav Suri on 06.08.2021.
//

import SwiftUI
struct KymaColorSettings {

    // foreground colors
    @State var textColor: Color = Color(KymaColor: .Gray3)
    var todayColor: Color = Color(KymaColor: .Blue3)
    var selectedColor: Color = Color(.white)
    var disabledColor: Color = Color(KymaColor: .Gray9)
    var betweenStartAndEndColor: Color = Color(KymaColor: .Gray3)
    // background colors
    var textBackgroundColor: Color = Color.clear
    var todayBackgroundColor: Color = Color(.white)
    var selectedBackgroundColor: Color = Color(KymaColor: .Blue3)
    var disabledBackgroundColor: Color = Color.clear
    var betweenStartAndEndBackgroundColor: Color = Color(KymaColor: .Blue8)
    // headers foreground colors
    var weekdayHeaderColor: Color = Color(KymaColor: .Gray7)
    var monthHeaderColor: Color = Color(KymaColor: .Gray2)
    var yearHeaderColor: Color = Color(KymaColor: .Gray9)
    // headers background colors
    var weekdayHeaderBackgroundColor: Color = Color.clear
    var monthBackgroundColor: Color = Color.clear
    //next & prev button colors
    var changeMonthButtonBackground: Color = Color(.white)
    var changeMonthButtonForeground: Color = Color(KymaColor: .Gray3)
    
    var dividerColor:Color = Color(KymaColor: .Gray9)

}
