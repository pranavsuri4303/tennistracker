//
//  KymaDatePicker.swift
//  
//
//  Created by Pranav Suri on 06.08.2021.
//

import SwiftUI

struct KymaDatePicker: View {
    @ObservedObject var KymaDateManager:KymaDateManager
    var monthOffset = 0
    var body: some View {
        KymaMonth(KymaManager:  KymaDateManager, monthOffset: monthOffset)
    }
}
