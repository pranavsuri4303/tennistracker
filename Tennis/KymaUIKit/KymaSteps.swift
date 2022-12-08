//
//  KymaSteps.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaSteps: View {
    
    @StateObject var steps:KymaStepsItems
    var orientation: KymaStepsOrientation
    
    var primaryTextColor:Color = Color(KymaColor: .Gray3)
    var secondaryTextColor:Color = Color(KymaColor: .Gray7)
    var primaryAccentColor:Color = Color(KymaColor: .Blue3)
    var secondaryAccentColor:Color = Color(KymaColor: .Blue11)
    var secondaryColor:Color = Color(KymaColor: .Gray11)
    var errorColor:Color = Color(KymaColor: .Red3)
    var iconColor:Color = Color(.white)
    
    var lines:Bool = true
    
    
    var body: some View {
        VStack {
            if orientation == .Horizontal {
                HStack(alignment:.top, spacing:0) {
                    ForEach(steps.items) { step in
                        KymaStep(item: step, orientation: orientation, items: steps.items, primaryTextColor: primaryTextColor, secondaryTextColor: secondaryTextColor, primaryAccentColor: primaryAccentColor, secondaryAccentColor: secondaryAccentColor, secondaryColor: secondaryColor, errorColor: errorColor, iconColor: iconColor, lines: lines)
                    }
                }
            }
            else {
                VStack(alignment:.leading, spacing: lines ? 0 : 16) {
                    ForEach(steps.items) { step in
                        KymaStep(item: step, orientation: orientation, items: steps.items, primaryTextColor: primaryTextColor, secondaryTextColor: secondaryTextColor, primaryAccentColor: primaryAccentColor, secondaryAccentColor: secondaryAccentColor, secondaryColor: secondaryColor, errorColor: errorColor, iconColor: iconColor, lines: lines)
                    }
                }
            }
        }
        .onAppear() {
            
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
