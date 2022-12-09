//
//  Checkout.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct CheckoutTemplate: View {
    var isDark = false
    @State var showCheckout = false
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing:16) {
                    Button(action:{
                       
                    }) {
                        Image("arrow-left")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width:20, height:20)
                            .foregroundColor(Color(.white))
                    }
                    Text("Your Cart")
                        .xelaSmallBodyBold()
                        .foregroundColor(Color(.white))
                }
                Spacer()
                Button(action:{}) {
                    Text("Edit")
                        .xelaButtonLarge()
                        .foregroundColor(Color(xelaColor: .Blue8))
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: .Gray2))
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing:24) {
                    
                    VStack(alignment:.leading, spacing:16) {
                        HStack(spacing:16) {
                            ZStack {
                                
                                Image("prod-t1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            .frame(width:96, height: 96)
                            .cornerRadius(16)
                            
                            VStack(alignment:.leading, spacing:8) {
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Adidas Gazelle Black")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("Color: Black")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                }
                                HStack {
                                    Text("€283,11")
                                        .xelaSubheadline()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Spacer()
                                    XelaButton(leftIcon:"x", size: .Small, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray2), foregroundColor: Color(.white))
                                }
                            }
                            //.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                        }
                        //.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                        //.background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                        //.cornerRadius(16)
                        
                        HStack(spacing:16) {
                            ZStack {
                                
                                Image("prod-t2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            .frame(width:96, height: 96)
                            .cornerRadius(16)
                            
                            VStack(alignment:.leading, spacing:8) {
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Adidas Yeezy Boost 350 V2")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("Size: 58")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                }
                                HStack {
                                    Text("€59,55")
                                        .xelaSubheadline()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Spacer()
                                    XelaButton(leftIcon:"x", size: .Small, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray2), foregroundColor: Color(.white))
                                }
                            }
                            //.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                        }
                        //.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                        //.background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                        //.cornerRadius(16)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                    
                    VStack(spacing:20) {
                        HStack {
                            Text("Subtotal")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                            Text("€342,66")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        
                        HStack {
                            Text("Shipping")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                            Text("Calculated on next step")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                        }
                        
                        HStack {
                            Text("Taxes (estimated)")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                            Text("€48")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        
                        HStack {
                            Text("Discount")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                            Text("€30")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        
                        HStack {
                            Text("Total")
                                .xelaSmallBody()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                            Text("€360,66")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 24)
                    
                    XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        .padding(.horizontal, 16)
                    
                    VStack(alignment:.leading, spacing:24) {
                        HStack(spacing:16) {
                            Image("car")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:15, height:15)
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            
                            VStack(alignment:.leading, spacing:0) {
                                Text("Delivery")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Track the progress of your order in real time")
                                    .xelaCaption()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            }
                        }
                        
                        HStack(spacing:16) {
                            Image("clockwise")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:15, height:15)
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            
                            VStack(alignment:.leading, spacing:0) {
                                Text("Returns")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("14 day money-back returns if you change your mind.")
                                    .xelaCaption()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 24)
                    
                    XelaButton(text:"Proceed to checkout", action: {showCheckout.toggle()}, rightIcon: "right-small", background: Color(xelaColor: .Blue5), foregroundColor: Color(.white), autoResize: false)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 24)
                }
            }
            
            
        }
        .background(isDark ? Color(.black) : Color(.white))
        .sheet(isPresented: $showCheckout) {
            CheckoutOrderTemplate(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }
}


struct CheckoutOrderTemplate: View {
    var isDark = false
    
    @State var firstNameText:String = "Roselle"
    @State var firstNameState:XelaTextFieldState = .Default
    @State var firstNameHelperText:String = ""
    
    @State var lastNameText:String = "Ehrman"
    @State var lastNameState:XelaTextFieldState = .Default
    @State var lastNameHelperText:String = ""
    
    @State var phoneText:String = "(+33)7 45 55 87 71"
    @State var phoneState:XelaTextFieldState = .Default
    @State var phoneHelperText:String = ""
    
    @State var emailText:String = "vuhaithuongnute@gmail.com"
    @State var emailState:XelaTextFieldState = .Default
    @State var emailHelperText:String = ""
    
    @State var countryText:String = ""
    @State var countryState:XelaTextFieldState = .Default
    @State var countryHelperText:String = ""
    
    @State var stateText:String = ""
    @State var stateState:XelaTextFieldState = .Default
    @State var stateHelperText:String = ""
    
    @State var cityText:String = ""
    @State var cityState:XelaTextFieldState = .Default
    @State var cityHelperText:String = ""
    
    @State var zipText:String = ""
    @State var zipState:XelaTextFieldState = .Default
    @State var zipHelperText:String = ""
    
    @State var addressText:String = "775 Rolling Green Rd."
    @State var addressState:XelaTextFieldState = .Default
    @State var addressHelperText:String = ""
   
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing:16) {
                    Button(action:{
                       
                    }) {
                        Image("arrow-left")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width:20, height:20)
                            .foregroundColor(Color(.white))
                    }
                    Text("Checkout")
                        .xelaSmallBodyBold()
                        .foregroundColor(Color(.white))
                }
                Spacer()
                Text("Step 1/4")
                    .xelaButtonLarge()
                    .foregroundColor(Color(.white))
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: .Gray2))
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing:24) {
                    HStack(spacing:16) {
                        ZStack {
                            Text("1")
                                .xelaButtonMedium()
                                .foregroundColor(isDark ? Color(xelaColor: .Blue2) : Color(xelaColor: .Blue3))
                        }
                        .frame(width: 32, height: 32)
                        .background(isDark ? Color(xelaColor: .Blue8) : Color(xelaColor: .Blue11))
                        .cornerRadius(12)
                        
                        VStack(alignment:.leading, spacing:0) {
                            Text("Personal Details")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            HStack(spacing:0) {
                                Text("If you already have an account ")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray6))
                                Button(action:{}) {
                                    Text("Sign in here")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(xelaColor: .Blue2) : Color(xelaColor: .Blue3))
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .padding(.bottom, 24)
                    
                    VStack(spacing:24) {
                       
                        XelaTextField(
                            placeholder: "First Name",
                            value: $firstNameText,
                            state: $firstNameState,
                            helperText: $firstNameHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "Last Name",
                            value: $lastNameText,
                            state: $lastNameState,
                            helperText: $lastNameHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "Phone Number",
                            value: $phoneText,
                            state: $phoneState,
                            helperText: $phoneHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "E-mail",
                            value: $emailText,
                            state: $emailState,
                            helperText: $firstNameHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "Country",
                            value: $countryText,
                            state: $countryState,
                            helperText: $countryHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "State",
                            value: $stateText,
                            state: $stateState,
                            helperText: $stateHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "City",
                            value: $cityText,
                            state: $cityState,
                            helperText: $cityHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "Zip Code",
                            value: $zipText,
                            state: $zipState,
                            helperText: $zipHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        
                        XelaTextField(
                            placeholder: "Address",
                            value: $addressText,
                            state: $addressState,
                            helperText: $addressHelperText,
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                       
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                    XelaButton(text: "Add secondary address", leftIcon: "add-small", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        .padding(.horizontal, 16)
                        Spacer()
                    }
                    
                    XelaCheckbox(label: "My billing address is the same as my delivery address", defaultColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        .padding(.horizontal, 16)
                    
                    HStack {
                        XelaButton(leftIcon:"left-small", size: .Medium, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        Spacer()
                        XelaButton(text:"Continue to delivery", rightIcon: "right-small", size:.Medium, background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: true)
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                    
                }
            }
            
            
        }
        .background(isDark ? Color(.black) : Color(.white))
    }
}
