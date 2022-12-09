//
//  Sidebar1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 13.08.2021.
//

import SwiftUI

struct Sidebar1Block: View {
    
    var isDark = false
    
    @State var showFull = false
    
    @State var searchText:String = ""
    @State var searchState:XelaTextFieldState = .Default
    @State var searchHelperText:String = ""
    
    @State var messagesBadge:String = "23"
    
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    if showFull {
                        Image("logo")
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(width: 102, height: 16)
                            
                        Spacer()
                        XelaButton (
                            action: {
                                withAnimation {
                                    showFull = false
                                }
                            },
                            leftIcon:"send-left",
                            size: .Small,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                    }
                    else {
                        XelaButton (
                            action: {
                                withAnimation {
                                    showFull = true
                                }
                            },
                            leftIcon:"send-right",
                            size: .Small,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                    }
                }
                
                ScrollView {
                    VStack(alignment: showFull ? .leading : .center, spacing:6) {
                        Group {
                            VStack {
                                if showFull {
                                    XelaTextField(
                                        placeholder: "Search",
                                        value: $searchText,
                                        state: $searchState,
                                        helperText: $searchHelperText,
                                        leftIcon: "search-textfield",
                                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                                    )
                                }
                                else {
                                    XelaButton (
                                        action: {
                                            
                                        },
                                        leftIcon: isDark ? "search-1" : "search",
                                        size: .Small,
                                        background: isDark ? Color(xelaColor:.Gray2) : Color(.white),
                                        foregroundColor: Color(xelaColor: .Gray2),
                                        iconsRenderingMode: .original
                                    )
                                    //.padding(.top, 10)
                                }
                            }
                            .frame(height: 56)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "home-1" : "home")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Home")
                                            .xelaButtonMedium()
                                            
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "pie-chart-1" : "pie-chart")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Dashboard")
                                            .xelaButtonMedium()
                                            
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            
                            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        
                        Group {
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "tag-1" :"tag")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Products")
                                            .xelaButtonMedium()
                                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "flag-1" :"flag")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Events")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "user-circle-2" : "user-circle-1")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Users")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        
                        Group {
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "basket-1" : "basket")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Sales")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "discount-1" : "discount")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Discounts")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "credit-card-1" : "credit-card")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Payments")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        
                        Group {
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "message-text-alt-1" : "message-text-alt")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Messages")
                                            .xelaButtonMedium()
                                        Spacer()
                                        XelaBadge(text: $messagesBadge, background: Color(xelaColor: .Orange3), foregroundColor: Color(.white))
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                            
                            Button(action: {}) {
                                HStack(spacing:16) {
                                    Image(isDark ? "adjust-vertical-alt-1" : "adjust-vertical-alt")
                                        .resizable()
                                        .frame(width:15, height: 15)
                                    if showFull {
                                        Text("Settings")
                                            .xelaButtonMedium()
                                        Spacer()
                                    }
                                    
                                }
                            }
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .frame(height:32)
                        }
                        
                    }
                }
                .padding(.top, 24)
                
                
                Spacer()
                
                
                
                HStack {
                    if showFull {
                        XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"))
                        VStack(alignment: .leading, spacing:0) {
                            Text("Floyd Miles")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Text("debra.holt@example.com")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                        }
                        Spacer()
                        XelaButton (
                            action: {
                                
                            },
                            leftIcon:"more-horizontal",
                            size: .Small,
                            background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                            foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                        )
                    }
                    else {
                        XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"))
                    }
                }
            }
            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
            .frame(width: showFull ? 320 : 96)
            .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
            .cornerRadius(24)
            
            Spacer()
        }
        .background(Color(xelaColor: isDark ? .Gray1 : .Gray12))
        
    }
}
