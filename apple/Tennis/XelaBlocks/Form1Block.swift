//
//  Form1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Form1Block: View {
    var isDark = false
    
    @State var fullNameValue:String = "Marvin McKinney"
    @State var fullNameState:XelaTextFieldState = .Default
    @State var fullNameHelperText:String = ""
    
    @State var emailValue:String = "michael.mitc@example.com"
    @State var emailState:XelaTextFieldState = .Default
    @State var emailHelperText:String = ""
    
    @State var companyValue:String = "Biffco Enterprises Ltd."
    @State var companyState:XelaTextFieldState = .Default
    @State var companyHelperText:String = ""
    
    @State var passwordValue:String = ""
    @State var passwordState:XelaTextFieldState = .Default
    @State var passwordHelperText:String = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:32) {
                VStack(spacing:8) {
                    Text("Create Your Free Account")
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
                        .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                    }
                }
                
                VStack(spacing:24) {
                    XelaTextField(
                        placeholder: "Full Name",
                        value: $fullNameValue,
                        state: $fullNameState,
                        helperText: $fullNameHelperText,
                        rightIcon: "user-circle-3",
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
                        rightIcon: "email",
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaTextField(
                        placeholder: "Company Name",
                        value: $companyValue,
                        state: $companyState,
                        helperText: $companyHelperText,
                        rightIcon: "company",
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
                        rightIcon: "password",
                        secureField: true,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaButton(text:"Create Account", rightIcon: "arrow-right", background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: false)
                    
                    
                }
                
                
                HStack {
//                    Text("By signing up you are agreeing to")
//                        .xelaCaption()
//                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Button (action: {}) {
                        Text("Terms & Conditions")
                            .xelaCaption()
                    }
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
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

