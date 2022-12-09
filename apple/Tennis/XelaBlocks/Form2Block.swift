//
//  Form2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Form2Block: View {
    var isDark = false
    
    @State var emailValue:String = "michael.mitc@example.com"
    @State var emailState:XelaTextFieldState = .Default
    @State var emailHelperText:String = ""
    
    @State var passwordValue:String = ""
    @State var passwordState:XelaTextFieldState = .Default
    @State var passwordHelperText:String = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:32) {
                VStack(spacing:8) {
                    Text("Get's started")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    HStack {
                        Text("Already have an account?")
                            .xelaSmallBodyBold()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Button (action: {}) {
                            Text("Log in")
                                .xelaSmallBodyBold()
                        }
                        .foregroundColor(isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3))
                    }
                }
                
                VStack {
                    XelaButton(text:"Sign up with Google", rightIcon: "google-1", type: .Secondary, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2), iconsRenderingMode: .original)
                    XelaButton(text:"Sign up with Facebook", rightIcon: "facebook-1", type: .Primary, background: Color(xelaColor: .Blue5))
                }
                
                Text("Or continue with")
                    .xelaSmallBody()
                    .foregroundColor(Color(xelaColor: .Gray8))
                
                VStack(spacing: 24) {
                    XelaTextField(
                        placeholder: "Email Address",
                        value: $emailValue,
                        state: $emailState,
                        helperText: $emailHelperText,
                        leftIcon: "user-circle",
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaTextField(
                        placeholder: "Password",
                        value: $passwordValue,
                        state: $passwordState,
                        helperText: $passwordHelperText,
                        leftIcon: "password-1",
                        secureField: true,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaCheckbox(label: "I agree to platform Terms of service and Privacy Policy", selectedColor: isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Large, state: .Default, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    
                    XelaButton(text:"Register", background: isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3), foregroundColor: Color(.white), autoResize: false)
                    
                    
                }
            }
            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
            .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
            .cornerRadius(32)
            .padding()
            
            Spacer()
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
    }
}

