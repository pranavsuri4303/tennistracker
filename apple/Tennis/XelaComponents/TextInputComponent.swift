//
//  TextInputComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct TextInputComponent: View {
    @State var textfield1Value:String = ""
    @State var textfield1State:XelaTextFieldState = .Default
    @State var textfield1HelperText:String = ""
    
    @State var textfield2Value:String = ""
    @State var textfield2State:XelaTextFieldState = .Default
    @State var textfield2HelperText:String = "Helper Text"
    
    @State var textfield3Value:String = ""
    @State var textfield3State:XelaTextFieldState = .Default
    @State var textfield3HelperText:String = ""
    
    @State var textfield4Value:String = ""
    @State var textfield4State:XelaTextFieldState = .Default
    @State var textfield4HelperText:String = "Helper Text"
    
    @State var textfield5Value:String = ""
    @State var textfield5State:XelaTextFieldState = .Default
    @State var textfield5HelperText:String = ""
    
    @State var textfield6Value:String = ""
    @State var textfield6State:XelaTextFieldState = .Default
    @State var textfield6HelperText:String = "Helper Text"
    
    @State var textfield7Value:String = ""
    @State var textfield7State:XelaTextFieldState = .Default
    @State var textfield7HelperText:String = ""
    
    @State var textfield8Value:String = ""
    @State var textfield8State:XelaTextFieldState = .Default
    @State var textfield8HelperText:String = "Helper Text"
    
    @State var textfield9Value:String = ""
    @State var textfield9State:XelaTextFieldState = .Default
    @State var textfield9HelperText:String = ""
    
    @State var textfield10Value:String = ""
    @State var textfield10State:XelaTextFieldState = .Default
    @State var textfield10HelperText:String = "Helper Text"
    
    
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Text Input")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.center, spacing:16) {
                        Group {
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield1Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield1State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield1State = .Success
                                        }
                                        else {
                                            textfield1State = .Error
                                        }
                                    }
                                    else {
                                        textfield1State = .Focus
                                    }
                                }
                
                            }), state: $textfield1State, helperText: $textfield1HelperText)
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield2Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield2State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield2State = .Success
                                        }
                                        else {
                                            textfield2State = .Error
                                        }
                                    }
                                    else {
                                        textfield2State = .Focus
                                    }
                                }
                
                            }), state: $textfield2State, helperText: $textfield2HelperText)
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield3Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield3State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield3State = .Success
                                        }
                                        else {
                                            textfield3State = .Error
                                        }
                                    }
                                    else {
                                        textfield3State = .Focus
                                    }
                                }
                
                            }), state: $textfield3State, helperText: $textfield3HelperText, leftIcon: "icon")
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield4Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield4State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield4State = .Success
                                        }
                                        else {
                                            textfield4State = .Error
                                        }
                                    }
                                    else {
                                        textfield4State = .Focus
                                    }
                                }
                
                            }), state: $textfield4State, helperText: $textfield4HelperText, leftIcon: "icon")
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield5Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield5State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield5State = .Success
                                        }
                                        else {
                                            textfield5State = .Error
                                        }
                                    }
                                    else {
                                        textfield5State = .Focus
                                    }
                                }
                
                            }), state: $textfield5State, helperText: $textfield5HelperText, rightIcon: "icon")
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield6Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield6State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield6State = .Success
                                        }
                                        else {
                                            textfield6State = .Error
                                        }
                                    }
                                    else {
                                        textfield6State = .Focus
                                    }
                                }
                
                            }), state: $textfield6State, helperText: $textfield6HelperText, rightIcon: "icon")
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield7Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield7State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield7State = .Success
                                        }
                                        else {
                                            textfield7State = .Error
                                        }
                                    }
                                    else {
                                        textfield7State = .Focus
                                    }
                                }
                
                            }), state: $textfield7State, helperText: $textfield7HelperText, leftIcon: "icon", rightIcon: "icon")
                            
                            XelaTextField(placeholder: "TextField Placeholder", value: $textfield8Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield8State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield8State = .Success
                                        }
                                        else {
                                            textfield8State = .Error
                                        }
                                    }
                                    else {
                                        textfield8State = .Focus
                                    }
                                }
                
                            }), state: $textfield8State, helperText: $textfield8HelperText, leftIcon: "icon", rightIcon: "icon")
                            
                            XelaTextField(placeholder: "SecureField Placeholder", value: $textfield9Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield9State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield9State = .Success
                                        }
                                        else {
                                            textfield9State = .Error
                                        }
                                    }
                                    else {
                                        textfield9State = .Focus
                                    }
                                }
                
                            }), state: $textfield9State, helperText: $textfield9HelperText, leftIcon: "icon", rightIcon: "icon", secureField: true)
                            
                            XelaTextField(placeholder: "SecureField Placeholder", value: $textfield10Value.onChange({ value in
                            
                                if value.isEmpty {
                                    textfield10State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textfield10State = .Success
                                        }
                                        else {
                                            textfield10State = .Error
                                        }
                                    }
                                    else {
                                        textfield10State = .Focus
                                    }
                                }
                
                            }), state: $textfield10State, helperText: $textfield10HelperText, leftIcon: "icon", rightIcon: "icon", secureField: true)
                            
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(xelaColor: .Gray12))
    }
}
