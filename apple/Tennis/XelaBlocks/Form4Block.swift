//
//  Form4Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Form4Block: View {
    var isDark = false
    
    @State var fullNameValue:String = ""
    @State var fullNameState:XelaTextFieldState = .Default
    @State var fullNameHelperText:String = ""
    
    @State var roleValue:String = ""
    @State var roleState:XelaTextFieldState = .Default
    @State var roleHelperText:String = ""
    
    @State var emailValue:String = "michael.mitc@example.com"
    @State var emailState:XelaTextFieldState = .Default
    @State var emailHelperText:String = ""
    
    @State var numberValue:String = ""
    @State var numberState:XelaTextFieldState = .Default
    @State var numberHelperText:String = ""
    
    @State var companyValue:String = "Barone LLC."
    @State var companyState:XelaTextFieldState = .Default
    @State var companyHelperText:String = ""
    
    @State var addressValue:String = "2972 Westheimer Rd. Santa Ana"
    @State var addressState:XelaTextFieldState = .Default
    @State var addressHelperText:String = ""
    
    @State var passwordValue:String = ""
    @State var passwordState:XelaTextFieldState = .Default
    @State var passwordHelperText:String = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:32) {
                HStack {
                    VStack(alignment:.leading, spacing:0) {
                        Text("Sign up as")
                            .xelaHeadline()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Text("Company Name")
                            .xelaHeadline()
                            .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                       
                    }
                    Spacer()
                }
                
                VStack(spacing:24) {
                    XelaTextField(
                        placeholder: "Company name",
                        value: $companyValue,
                        state: $companyState,
                        helperText: $companyHelperText,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    XelaTextField(
                        placeholder: "Address",
                        value: $addressValue,
                        state: $addressState,
                        helperText: $addressHelperText,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    HStack(spacing:16) {
                        XelaTextField(
                            placeholder: "Your name",
                            value: $fullNameValue,
                            state: $fullNameState,
                            helperText: $fullNameHelperText,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                        
                        XelaTextField(
                            placeholder: "Your role",
                            value: $roleValue,
                            state: $roleState,
                            helperText: $roleHelperText,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                    }
                    
                    
                    
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
                    
                    XelaTextField(
                        placeholder: "Mobile Number",
                        value: $numberValue,
                        state: $numberState,
                        helperText: $numberHelperText,
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    
                    HStack {
                    
                        XelaCheckbox(label: "I agree with all Terms and conditions and Privacy policies", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray8))
                        
                        
                        XelaButton(text:"Register", size: .Medium, background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: true)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            .cornerRadius(16)
                    
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
