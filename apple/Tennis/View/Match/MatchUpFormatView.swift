//
//  MatchUpFormatView.swift
//  Tennis
//
//  Created by Pranav Suri on 18/1/23.
//

import SwiftUI

struct MatchUpFormatView: View {
    @State var tempText1 = ""
    @State var selectedId: Int = 0
    @State var tempText2 = ""
    @State var tempText3 = ""
    @State var tempText4 = ""
    @State var tempText5 = ""
    @State var tempText6 = ""
    var body: some View {
        XelaSegmentedControl(items: [XelaSegmentedControlItem(id: 0,
                                                              label: "Best of"),
                                     XelaSegmentedControlItem(id: 1,
                                                              label: "Exactly")], selectedId: $selectedId)
        XelaTextField(placeholder: "No. of Set", value: $tempText2, state: .Default, isDataPicker: true) 
    }
}

