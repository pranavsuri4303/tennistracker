//
//  Form3Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Form3Block: View {
    var isDark = false
    
    @State var userNameValue:String = "Cody Fisher"
    @State var userNameState:XelaTextFieldState = .Default
    @State var userNameHelperText:String = ""
    
    @State var emailValue:String = "michael.mitc@example.com"
    @State var emailState:XelaTextFieldState = .Default
    @State var emailHelperText:String = ""
    
    @State var passwordValue:String = "123456"
    @State var passwordState:XelaTextFieldState = .Default
    @State var passwordHelperText:String = ""
    
    @State var confirmValue:String = "123456"
    @State var confirmState:XelaTextFieldState = .Default
    @State var confirmHelperText:String = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:32) {
                VStack(spacing:8) {
                    Text("Create Your Free Account")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                   
                }
                
                VStack(spacing:24) {
                    XelaTextField(
                        placeholder: "Username",
                        value: $userNameValue,
                        state: $userNameState,
                        helperText: $userNameHelperText,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaTextField(
                        placeholder: "Email Address",
                        value: $emailValue,
                        state: $emailState,
                        helperText: $emailHelperText,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    HStack(spacing:16) {
                        XelaTextField(
                            placeholder: "Password",
                            value: $passwordValue,
                            state: $passwordState,
                            helperText: $passwordHelperText,
                            secureField: true,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                        
                        XelaTextField(
                            placeholder: "Confirm",
                            value: $confirmValue,
                            state: $confirmState,
                            helperText: $confirmHelperText,
                            secureField: true,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                    }
                    
                    XelaCheckbox(label: "By creating an account, you agree to the Terms of Service and Privacy Policy", selectedColor: isDark ? Color(xelaColor: .Purple3) : Color(xelaColor: .Purple3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray8))
                    
                    
                    XelaButton(text:"Register", size: .Medium, background: Color.clear, foregroundColor: Color(.white), autoResize: false)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                        .cornerRadius(16)
                    
                    Text("or")
                        .xelaSmallBody()
                        .foregroundColor(Color(xelaColor: .Gray8))
                    
                    VStack(spacing:16) {
                        XelaButton(text:"Continue with Google", leftIcon: "google-1", size: .Medium, type: .Secondary, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2), autoResize: false, iconsRenderingMode: .original)
                        XelaButton(text:"Continue with Facebook", leftIcon: "facebook-2", size: .Medium, type: .Secondary, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2), autoResize: false, iconsRenderingMode: .original)
                    }
                    
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

