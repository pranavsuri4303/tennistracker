//
//  KymaTextField.swift
//  
//
//  Created by Pranav Suri on 01.08.2021.
//

import SwiftUI

struct KymaTextField: View {
    
    @State var placeholder:String
    @Binding var value:String
    @Binding var state:KymaTextFieldState
    @Binding var helperText:String
    
    @State var leftIcon:String? = nil
    @State var rightIcon:String? = nil
    
    var disableAutocorrection:Bool = true
    
    var secureField:Bool = false
    
    var background:Color = Color(.white)
    var disabledBackground:Color = Color(KymaColor: .Gray12)
    var placeholderColor:Color = Color(KymaColor: .Gray8)
    var textfieldColor:Color = Color(KymaColor: .Gray)
    var disabledTextfieldColor:Color = Color(KymaColor: .Gray8)
    var borderDefaultColor:Color = Color(KymaColor: .Gray11)
    var borderDisabledColor:Color = Color(KymaColor: .Gray8)
    var borderErrorColor:Color = Color(KymaColor: .Red3)
    var borderSuccessColor:Color = Color(KymaColor: .Green1)
    var borderHoverColor:Color = Color(KymaColor: .Blue5)
    var borderFocusColor:Color = Color(KymaColor: .Blue5)
    var iconDefaultColor:Color? = nil
    var iconDisabledColor:Color = Color(KymaColor: .Gray8)
    var iconErrorColor:Color = Color(KymaColor: .Red3)
    var iconSuccessColor:Color = Color(KymaColor: .Green1)
    
    var defaultHelperTextColor:Color = Color(KymaColor: .Gray8)
    var disabledHelperTextColor:Color = Color(KymaColor: .Gray8)
    var errorHelperTextColor:Color = Color(KymaColor: .Red3)
    var successHelperTextColor:Color = Color(KymaColor: .Green1)
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                
                if leftIcon != nil {
                    Image(leftIcon!)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:15 , height: 15)
                        .foregroundColor(state == .Disabled ? iconDisabledColor : state == .Error ? iconErrorColor : state == .Success ? iconSuccessColor : iconDefaultColor)
                }
                if secureField {
                    SecureField("", text: $value)
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextfieldColor : textfieldColor)
                        .KymaPlaceholder(when: value.isEmpty) {
                            VStack(spacing: 8) {
                                Text(placeholder)
                                    .KymaSmallBody()
                                    .foregroundColor(placeholderColor)
                                    .offset(y: value.isEmpty ? 0 : -10)
                                    .lineLimit(1)
                                if !value.isEmpty {
                                    
                                    Spacer()
                                }
                                
                            }
                        }
                        .frame(height:40)
                        .offset(y: value.isEmpty ? 0 : 10)
                        .disableAutocorrection(disableAutocorrection)
                }
                else {
                    TextField("", text: $value)
                        .font(.system(size: 14, weight: .bold))
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextfieldColor : textfieldColor)
                        .KymaPlaceholder(when: value.isEmpty) {
                            VStack(spacing: 8) {
                                Text(placeholder)
                                    .KymaSmallBody()
                                    .foregroundColor(placeholderColor)
                                    .offset(y: value.isEmpty ? 0 : -10)
                                    .lineLimit(1)
                                if !value.isEmpty {
                                    
                                    Spacer()
                                }
                                
                            }
                        }
                        .frame(height:40)
                        .offset(y: value.isEmpty ? 0 : 10)
                        .disableAutocorrection(disableAutocorrection)
                    
                }
                
                    
                
                if rightIcon != nil {
                    Image(rightIcon!)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:15 , height: 15)
                        .foregroundColor(state == .Disabled ? iconDisabledColor : state == .Error ? iconErrorColor : state == .Success ? iconSuccessColor : iconDefaultColor)
                }
                    
            }
            .frame(height:40)
            .padding(EdgeInsets(top: 8, leading: leftIcon != nil ? 16 : 24, bottom: 8, trailing: rightIcon != nil ? 16 : 24))
            .background(state == .Disabled ? disabledBackground : background)
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .strokeBorder(state == .Disabled ? borderDisabledColor : state == .Error ? borderErrorColor : state == .Success ? borderSuccessColor : state == .Hover ? borderHoverColor : state == .Focus ? borderFocusColor : borderDefaultColor, lineWidth: state == .Focus ? 2 : 1)
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
                    .foregroundColor(state == .Disabled ? disabledHelperTextColor : state == .Error ? errorHelperTextColor : state == .Success ? successHelperTextColor : defaultHelperTextColor)
            }
            
        }
        
    }
}


