//
//  Sidebar2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Sidebar2Block: View {
    
    var isDark = false
    
    @State var badge:String = "2"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Mailboxes")
                .xelaHeadline()
                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                .padding(.horizontal, 24)
            XelaButton(text: "Gmail", leftIcon: "google", size: .Large, background: Color(xelaColor: .Blue6), foregroundColor: Color(.white), autoResize: false)
                .padding(.horizontal, 24)
            ScrollView {
                VStack(alignment:.leading, spacing:24) {
                    VStack(spacing:6) {
                        Button(action: {}) {
                            HStack(spacing:16) {
                                Image("inbox")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color(xelaColor: .Gray7))
                                    .frame(width:15, height:15)
                                Text("Inbox")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Spacer()
                                Text("1.256")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray7))
                            }
                        }
                        .frame(height:32)
                        
                        Button(action: {}) {
                            HStack(spacing:16) {
                                Image("star")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color(xelaColor: .Gray7))
                                    .frame(width:15, height:15)
                                Text("Starred")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Spacer()
                                Text("49")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray7))
                            }
                        }
                        .frame(height:32)
                        
                        Button(action: {}) {
                            HStack(spacing:16) {
                                Image("send")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color(xelaColor: .Gray7))
                                    .frame(width:15, height:15)
                                Text("Sent")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Spacer()
                                Text("41")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray7))
                            }
                        }
                        .frame(height:32)
                        
                        Button(action: {}) {
                            HStack(spacing:16) {
                                Image("text-document")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color(xelaColor: .Gray7))
                                    .frame(width:15, height:15)
                                Text("Drafts")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        .frame(height:32)
                        
                        Button(action: {}) {
                            HStack(spacing:16) {
                                Image("bin-sidebars")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(Color(xelaColor: .Gray7))
                                    .frame(width:15, height:15)
                                Text("Deleted")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Spacer()
                                Text("8")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray7))
                            }
                        }
                        .frame(height:32)
                    }
                    VStack(alignment: .leading, spacing:12) {
                        XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        HStack {
                            Text("Tags")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            XelaButton(leftIcon:"more-horizontal", size: .Small, background: isDark ? Color.clear : Color(.white), foregroundColor: (isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)), removePaddings: true)
                        }
                        HStack(spacing:16) {
                            Circle()
                                .stroke(Color(xelaColor: .Blue5), lineWidth: 3)
                                .frame(width:12, height:12)
                            Text("Behance")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            Text("753")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                        }
                        HStack(spacing:16) {
                            Circle()
                                .stroke(Color(xelaColor: .Pink3), lineWidth: 3)
                                .frame(width:12, height:12)
                            Text("Dribble")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            Text("156")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                        }
                        HStack(spacing:16) {
                            Circle()
                                .stroke(Color(xelaColor: .Green3), lineWidth: 3)
                                .frame(width:12, height:12)
                            Text("Work")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            Text("64")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray6))
                            
                        }
                    }
                    
                    VStack(spacing:16) {
                        
                        XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        
                        Button(action:{}) {
                            HStack(spacing:12) {
                                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar-1"))
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Cody Fisher")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                    Text("kenzi.lawson@example.com")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                        .lineLimit(1)
                                }
                                Spacer()
                                XelaBadge(text: $badge, background: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                    .frame(width:24, height:24)
                                Image("right")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width:15, height:15)
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            }
                        }
                        
                        HStack {
                            Text("Messages")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            XelaButton(leftIcon:"more-horizontal", size: .Small, background: isDark ? Color.clear : Color(.white), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2), removePaddings: true)
                        }
                        
                        Button(action:{}) {
                            HStack(spacing:12) {
                                XelaUserAvatar(size: .Small, style: .Circle, image: Image("image-1"))
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Dianne Russell")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                    Text("woohoooo")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                        .lineLimit(1)
                                }
                                Spacer()
                                Text("06:47")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                        }
                        
                        Button(action:{}) {
                            HStack(spacing:12) {
                                XelaUserAvatar(size: .Small, style: .Circle, image: Image("image-2"), decoration: .Indicator, decorationPosition: .BottomRight)
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Theresa Webb")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                    Text("omg, this is amazing...")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                        .lineLimit(1)
                                }
                                Spacer()
                                Text("02:45")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                        }
                        
                        Button(action:{}) {
                            HStack(spacing:12) {
                                XelaUserAvatar(size: .Small, style: .Circle, icon: "gatsbyjs", background: Color(xelaColor: .Pink5), foreground: Color(.white))
                                VStack(alignment:.leading, spacing:0) {
                                    Text("Cody Fisher")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                    Text("Haha oh man")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                        .lineLimit(1)
                                }
                                Spacer()
                                Text("2 week ago")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                        }
                        
                    }
                }
                .padding(.horizontal, 24)
            }
        }
        .padding(EdgeInsets(top: 32, leading: 0, bottom: 32, trailing: 0))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
}


