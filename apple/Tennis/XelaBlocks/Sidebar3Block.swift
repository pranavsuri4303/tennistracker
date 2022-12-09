//
//  Sidebar3Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Sidebar3Block: View {
    
    @State var badge:String = "22"
    var isDark = false
    var body: some View {
        
        HStack(spacing:0) {
            VStack(spacing:16) {
                HStack {
                    Spacer()
                    Image("vector")
                        .resizable()
                        .frame(width:40, height:40)
                    Spacer()
                }
                Spacer()
                VStack(spacing:12) {
                    XelaButton(leftIcon:"home", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"user-circle", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"grid-layout-1", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"chat", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"bell", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"pie-chart", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                    XelaButton(leftIcon:"calendar-plus", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6))
                }
                Spacer()
                XelaButton(leftIcon:"cog", size: .Medium, type: .Secondary, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray12), foregroundColor: Color(xelaColor: .Gray6), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), borderLineWidth: 1)
                
                XelaUserAvatar(size:.Medium, style: .Rectangle, image: Image("avatar-1"))
            }
            .padding(EdgeInsets(top: 32, leading: 0, bottom: 24, trailing: 0))
            .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
            .frame(width: 96)
            
            
            VStack(spacing:24) {
                HStack {
                    Text("Integrations")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Spacer()
                    XelaButton(size:.Medium, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2), removePaddings: true, systemIcon: "plus")
                }
                
                XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                
                VStack(spacing:0) {
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("instagram")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Instagram")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            Text("167")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("facebook")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Facebook")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("slack")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Slack")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("twitch")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Twitch")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            Text("3")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("snapchat")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Snapchat")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("discord")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Blue6))
                            
                            Text("Discord")
                                .xelaSmallBodyBold()
                                .foregroundColor(Color(xelaColor: .Blue6))
                            
                            Spacer()
                            
                            XelaBadge(text: $badge, background: isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue11), foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Blue6))
                                .frame(height:24)
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("twitter")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Twitter")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            
                            
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    
                    Button(action:{}) {
                        HStack(spacing:16) {
                            Image("github")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:15, height:15)
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                            Text("Github")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            
                            Text("17")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                }
                
                Spacer()
                
                HStack(spacing:24) {
                    Image("illustration")
                        .resizable()
                        .frame(width:42, height: 50)
                    VStack(spacing:16) {
                        Text("Upgrade to Premium for more features!")
                            .xelaButtonSmall()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .multilineTextAlignment(.center)
                        XelaButton(text: "Get premium", size: .Small, background: Color.clear, foregroundColor: Color(.white))
                            .background(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Yellow), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            .cornerRadius(12)
                    }
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
                .cornerRadius(12)
            }
            .padding(EdgeInsets(top: 32, leading: 24, bottom: 24, trailing: 24))
            .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
            
        }
    }
}
