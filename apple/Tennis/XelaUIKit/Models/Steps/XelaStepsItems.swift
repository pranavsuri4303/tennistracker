//
//  XelaStepsItems.swift
//  XelaExampleApp
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

class XelaStepsItems: ObservableObject {
    @Published var items: [XelaStepItem]

    init(items: [XelaStepItem]) {
        self.items = items
    }
}
