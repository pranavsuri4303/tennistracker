//
//  KymaSegmentedControllButton.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaSegmentedControllButton: View {
    var item:KymaSegmentedControllItem
    @Binding var selectedId:Int
    var primaryBackground:Color = Color(KymaColor: .Blue6)
    var secondaryBackground:Color = Color(KymaColor: .Gray12)
    var primaryFontColor:Color = Color(.white)
    var secondaryFontColor:Color = Color(KymaColor: .Gray2)
    var autoResize:Bool = false
    
    var body: some View {
        
        HStack(spacing:0) {
            if !autoResize {
                Spacer()
            }
            if !item.icon.isEmpty {
                Image(item.icon)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width:16, height: 16)
                    .foregroundColor(item.id == selectedId ? primaryFontColor : secondaryFontColor)
                    .padding(.trailing, item.label.isEmpty ? 0 : 8)
            }
            if !item.label.isEmpty {
                Text(item.label)
                    .KymaButtonMedium()
                    .foregroundColor(item.id == selectedId ? primaryFontColor : secondaryFontColor)
            }
            if !autoResize {
                Spacer()
            }
        }
        .padding(EdgeInsets(top: 16, leading: getPadding(), bottom: 16, trailing: getPadding()))
        .background(autoResize && selectedId == item.id ? primaryBackground : Color.clear)
        .contentShape(Rectangle())
        .cornerRadius(12)
        .onTapGesture {
            withAnimation {
                selectedId = item.id
            }
        }
    }
    
    func getPadding() -> CGFloat {
        if !autoResize {
            return 0
        }
        return 16
    }
}

