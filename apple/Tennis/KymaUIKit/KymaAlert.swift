//
//  KymaAlert.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaAlert: View {
    var title:String
    var text:String
    var leftIcon:String = ""
    var rightIcon:String = ""
    var primaryColor:Color = Color(KymaColor: .Blue6)
    var secondaryColor:Color = Color(KymaColor: .Gray7)
    var background:Color = Color(.white)
    var rightIconColor:Color = Color(KymaColor: .Gray6)
    var body: some View {
        
        HStack(spacing:16) {
            primaryColor
                .frame(width:8)
                .cornerRadius(8)
                .offset(x:-4)
            
            
            if !leftIcon.isEmpty {
                Image(leftIcon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width:15, height:15)
                    .foregroundColor(primaryColor)
            }
            
            VStack(alignment:.leading, spacing:4) {
                HStack(spacing:0) {
                    if !title.isEmpty {
                        Text(title)
                            .KymaButtonMedium()
                            .foregroundColor(primaryColor)
                    }
                    Spacer()
                }
                
                HStack(spacing:0) {
                    if !text.isEmpty {
                        Text(text)
                            .KymaCaption()
                            .foregroundColor(secondaryColor)
                    }
                    Spacer()
                }
            }
            
            if !rightIcon.isEmpty {
                Image(rightIcon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width:15, height:15)
                    .foregroundColor(rightIconColor)
            }
            
        }
        .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 16))
        .background(background)
        .cornerRadius(16)
    }
}

