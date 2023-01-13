//
//  XelaDatePicker.swift
//  XelaExampleApp
//
//  Created by Sherhan on 06.08.2021.
//

import SwiftUI

struct XelaDatePicker: View {
    @ObservedObject var xelaDateManager: XelaDateManager
    @Binding var selectedDateString: String
    var monthOffset = 0
    var body: some View {
        XelaMonth(xelaManager: xelaDateManager, monthOffset: monthOffset, selectedDateString: $selectedDateString)
    }
}
