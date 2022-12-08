//
//  KymaStepsItems.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

class KymaStepsItems: ObservableObject {
    @Published var items:[KymaStepItem]
    
    init(items:[KymaStepItem]) {
        self.items = items
    }
    
    
}
