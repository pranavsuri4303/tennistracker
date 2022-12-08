//
//  KymaTextarea.swift
//  
//
//  Created by Pranav Suri on 01.08.2021.
//

import SwiftUI

struct KymaTextarea: View {
    @Binding var value:String
    @Binding var helperText:String
    @State var placeholder:String
    @Binding var state:KymaTextareaState
    var disableAutocorrection:Bool = false
    var counter:Bool = false
    var maxSymbols = 200
    
    var placeholderColor: Color = Color(KymaColor: .Gray8)
    
    var counterColor: Color = Color(KymaColor: .Gray8)
    
    var disabledTextColor: Color = Color(KymaColor: .Gray8)
    var errorTextColor: Color = Color(KymaColor: .Red3)
    var defaultTextColor: Color = Color(KymaColor: .Gray2)
    
    var disabledBackground: Color = Color(KymaColor: .Gray12)
    var defaultBackground: Color = Color(.white)
    
    var disabledBorderColor: Color = Color(KymaColor: .Gray8)
    var errorBorderColor: Color = Color(KymaColor: .Red3)
    var successBorderColor:Color = Color(KymaColor: .Green1)
    var hoverBorderColor:Color = Color(KymaColor: .Blue5)
    var focusBorderColor:Color = Color(KymaColor: .Blue5)
    var defaultBorderColor:Color = Color(KymaColor: .Gray11)
    
    var disabledHelperText:Color = Color(KymaColor: .Gray8)
    var errorHelperText:Color = Color(KymaColor: .Red3)
    var successHelperText:Color = Color(KymaColor: .Green1)
    var defaultHelperText:Color = Color(KymaColor: .Gray8)
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    HStack {
                        if !placeholder.isEmpty {
                            Text(placeholder)
                                .KymaSmallBody()
                                .lineLimit(1)
                                .foregroundColor(placeholderColor)
                                .padding(.bottom, 5)
                        }
                        Spacer()
                        if counter {
                            Text("\(value.count)/\(maxSymbols)")
                                .KymaSmallBody()
                                .lineLimit(1)
                                .foregroundColor(counterColor)
                                .padding(.bottom, 5)
                        }
                    }
                    
                    TextEditor(text: $value)
                        .font(.system(size: 14, weight: .bold))
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextColor : state == .Error ? errorTextColor : defaultTextColor)
                        .colorMultiply(state == .Disabled ? disabledBackground : defaultBackground)
                        .disableAutocorrection(disableAutocorrection)
                        .padding(.horizontal, -5)
                        //.offset(x: -4, y: -4)
                }
            }
            .frame(height:200)
            //.font(.system(size: 14, weight: .bold))
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(state == .Disabled ? disabledBackground : defaultBackground)
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(state == .Disabled ? disabledBorderColor : state == .Error ? errorBorderColor : state == .Success ? successBorderColor : state == .Hover ? hoverBorderColor : state == .Focus ? focusBorderColor : defaultBorderColor, lineWidth: state == .Focus ? 2 : 1)
            )
            .onHover{ over in
                if over {
                    if state == .Default {
                        state = .Hover
                    }
                }
                else {
                    state = .Default
                }
            }
            
            if !helperText.isEmpty {
                Text(helperText)
                    .KymaCaption()
                    .foregroundColor(state == .Disabled ? disabledHelperText : state == .Error ? errorHelperText : state == .Success ? successHelperText : defaultHelperText)
            }
        }
    }
}

