//
//  KymaTabs.swift
//  
//
//  Created by Pranav Suri on 05.08.2021.
//

import SwiftUI

struct KymaTabs: View {
    var items:[KymaTabsItem]
    @Binding var selectedId:Int
    var primaryColor:Color = Color(KymaColor: .Blue6)
    var secondaryColor:Color = Color(KymaColor: .Gray6)
    var badgeBackground:Color = Color(KymaColor: .Orange3)
    var badgeTextColor:Color = Color(.white)
    
    var badgeBackgroundSelected:Color = Color(KymaColor: .Orange3)
    var badgeTextColorSelected:Color = Color(.white)
    
    var bottomLineColor:Color = Color(KymaColor: .Gray10)
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment:.leading, spacing:0) {
                
                HStack(spacing:8) {
                   
                    ForEach(items) { item in
                        KymaTab(item: item, selectedId: $selectedId, primaryColor: primaryColor, secondaryColor: secondaryColor, badgeBackground: badgeBackground, badgeTextColor: badgeTextColor, badgeBackgroundSelected: badgeBackgroundSelected, badgeTextColorSelected: badgeTextColorSelected)
                    }
                    
                }
                
                Rectangle()
                    .foregroundColor(bottomLineColor)
                    .frame(height:1)
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(primaryColor)
                    .frame(width: geometry.size.width/CGFloat(items.count), height: 3)
                    .offset(x: (geometry.size.width/CGFloat(items.count))*CGFloat(selectedId - items.first!.id), y:-3)
                    
                
                
                    
                
            }
        }
        .frame(height:46)
        
        
    }
}

