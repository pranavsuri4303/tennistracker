//
//  KymaChip.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaChip: View {
    var text:String
    var size:KymaChipSize = .Large
    var leftIcon:String = ""
    var rightIcon:String = ""
    
    @State var disabled:Bool = false
    @State var selected:Bool = false
    
    var borderWidth:CGFloat = 2
    
    var defaultBorderColor:Color = Color(KymaColor: .Blue3)
    var selectedBorderColor:Color = Color(KymaColor: .Blue3)
    var defaultBackgroundColor:Color = Color(.white)
    var selectedBackgroundColor:Color = Color(KymaColor: .Blue3)
    var defaultTextColor:Color = Color(KymaColor: .Blue3)
    var selectedTextColor:Color = Color(.white)
    
    
    
    
    
    var body: some View {
        HStack(spacing:10) {
            if !leftIcon.isEmpty {
                Image(leftIcon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width:16, height:16)
            }
            if size == .Large || size == .Medium {
                Text(text)
                    .KymaButtonMedium()
                    
            }
            else {
                Text(text)
                    .KymaButtonSmall()
            }
            if !rightIcon.isEmpty {
                Image(rightIcon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width:16, height:16)
            }
            
        }
        .foregroundColor(selected ? selectedTextColor : defaultTextColor)
        .padding(EdgeInsets(top: size == .Large ? 12 : size == .Medium ? 8 : 4, leading: (size == .Medium || size == .Small) && !leftIcon.isEmpty ? 8 : 12, bottom: size == .Large ? 12 : size == .Medium ? 8 : 4, trailing: !rightIcon.isEmpty && (size == .Large || size == .Medium) ? 8 : !rightIcon.isEmpty && size == .Small ? 4 : 12))
        .background(selected ? selectedBackgroundColor : defaultBackgroundColor)
        .cornerRadius(99)
        .overlay(
            RoundedRectangle(cornerRadius: 99)
                .strokeBorder(selected ? selectedBorderColor : defaultBorderColor, lineWidth: borderWidth)
                
        )
        .opacity(disabled ? 0.48 : 1)
        .onTapGesture {
            withAnimation {
                selected.toggle()
            }
        }
        .disabled(disabled)
        
    }
    
    
}

