//
//  Social.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct SocialTemplate: View {
    var isDark = false
    @State var showAvatar = false
    
    @State var bookmark3Active = false
    @State var like3Active = false
    
    @State var searchText:String = ""
    @State var searchState:XelaTextFieldState = .Default
    @State var searchHelperText:String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action:{
                    
                }) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                //.padding(.horizontal, 16)
                
                Spacer()
                Button(action:{
                    showAvatar.toggle()
                }) {
                    XelaUserAvatar(size: .Medium, style: .Circle, image:Image("avatar-1-1"), decoration: .Indicator, decorationPosition: .BottomRight)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(.black) : Color(.white))
            
            
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing:24) {
                        
                        XelaTextField(
                            placeholder: "Search...",
                            value: $searchText,
                            state: $searchState,
                            helperText: $searchHelperText,
                            leftIcon: "search-textfield",
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        .padding(.horizontal, 16)
                        
                        HStack {
                            Text("Stories")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                            Button(action:{}) {
                                Text("Watch All")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Blue6))
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing:16) {
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, icon: "add-small", background: isDark ? Color(.black) : Color(.white), foreground: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray2))
                                        .overlay(Circle().strokeBorder(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), lineWidth: 1))
                                        .padding(.top, 4)
                                        
                                    Text("PS-plus")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                .padding(.leading, 16)
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-1"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("PS-plus")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-2"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Gladys")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-3"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Jane")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-4"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Kerry")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-1"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("PS-plus")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-2"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Gladys")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-3"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Jane")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                VStack(spacing:12) {
                                    XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-4"))
                                        .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Blue), Color(xelaColor: .Purple)]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 4))
                                        .overlay(Circle().strokeBorder(isDark ? Color(.black) : Color(.white), lineWidth: 2))
                                        .padding(.top, 4)
                                        
                                    Text("Kerry")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray3))
                                }
                                .padding(.trailing, 16)
                            }
                        }
                        .offset(y: -4)
                        
                        HStack {
                            Text("Feeds")
                                .xelaHeadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 16)
                        
                        VStack(spacing:24) {
                            card4()
                                .padding(.horizontal, 16)
                            
                            card5()
                                .padding(.horizontal, 16)
                                .padding(.bottom, 24)
                            
                        }
                       
                        
                    }
                    //.padding(16)
                }
                
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        XelaButton(leftIcon:"add", size: .Medium, type: .Primary, background: Color(xelaColor: .Blue5), foregroundColor: Color(.white))
                            .padding(.trailing, 16)
                            .padding(.bottom, 16)
                    }
                }
                
            }
            
            
        }
        .background(isDark ? Color(.black) : Color(.white))
        .sheet(isPresented: $showAvatar) {
            SocialInfoTemplate(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    @ViewBuilder
    func card4() -> some View {
        VStack(spacing:16) {
            HStack(spacing:12) {
                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-4"))
                VStack(alignment:.leading, spacing:0) {
                    HStack(spacing: 8) {
                        Text("Robert Fox")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }
                    Text("@fox-000")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon:"more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
           
            ZStack {
                Image("media-image-4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    
            }
            .padding(.top, 8)
            
            
            
            
            VStack(alignment:.leading, spacing:12) {
                
                
                Text("Nvidia GeForce RTX 3080 Ti: When will it launch, how much will it cost, and how will it perform?")
                    .xelaSmallBody()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray4))
                
                Text("#NVIDIA #RTX3080 #GraphicsCard")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
            }
            .padding(.horizontal, 12)
            
            HStack(spacing:24) {
                HStack(spacing:8) {
                    Button(action:{like3Active.toggle()}) {
                        if like3Active {
                            Image("heart")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:20, height:20)
                                .foregroundColor(Color(xelaColor: .Red3))
                        }
                        else {
                            Image("heart-1")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:20, height:20)
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                        }
                        
                    }
                    
                    Text("1.6k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }
                
                
                HStack(spacing: 8) {
                    Button(action:{}) {
                        Image("chat-2")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width:20, height:20)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                        
                    }
                    
                    Text("2.3k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }
                
                
                
                
                Spacer()
                
                Button(action:{
                    bookmark3Active.toggle()
                })
                {
                    if bookmark3Active {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
                            .frame(width:20, height:20)
                            
                    }
                    else {
                        Image("bookmark-2")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                            .frame(width:20, height:20)
                    }
                    
                }
                
                
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            
            
        }
        //.padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).strokeBorder(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray11), lineWidth: 1))
    }
    
    @ViewBuilder
    func card5() -> some View {
        VStack(spacing:16) {
            HStack(spacing:12) {
                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-3"))
                VStack(alignment:.leading, spacing:0) {
                    HStack(spacing: 8) {
                        Text("Jane Smith")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }
                    Text("@jsmith87")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon:"more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
           
            ZStack {
                Image("media-image-3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    
            }
            .padding(.top, 8)
            
            
            
            
            VStack(alignment:.leading, spacing:12) {
                
                
                Text("While Corfu give us the ability to shoot by the sea with amazing blue background full of light of the sky, Florina give us its gentle side. The humble atmosphere and Light of Florina which comes...")
                    .xelaSmallBody()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray4))
                
                Text("#Sea #Florina")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
            }
            .padding(.horizontal, 12)
            
            HStack(spacing:24) {
                HStack(spacing:8) {
                    Button(action:{like3Active.toggle()}) {
                        if like3Active {
                            Image("heart")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:20, height:20)
                                .foregroundColor(Color(xelaColor: .Red3))
                        }
                        else {
                            Image("heart-1")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:20, height:20)
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                        }
                        
                    }
                    
                    Text("1.6k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }
                
                
                HStack(spacing: 8) {
                    Button(action:{}) {
                        Image("chat-2")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width:20, height:20)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                        
                    }
                    
                    Text("2.3k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }
                
                
                
                
                Spacer()
                
                Button(action:{
                    bookmark3Active.toggle()
                })
                {
                    if bookmark3Active {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
                            .frame(width:20, height:20)
                            
                    }
                    else {
                        Image("bookmark-2")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                            .frame(width:20, height:20)
                    }
                    
                }
                
                
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            
            
        }
        //.padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).strokeBorder(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray11), lineWidth: 1))
    }
}

struct SocialInfoTemplate: View {
    var isDark = false
    @State var badge:String = "2"
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action:{
                    
                }) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                //.padding(.horizontal, 16)
                
                Spacer()
                XelaUserAvatar(size: .Medium, style: .Circle, image:Image("avatar-1-1"), decoration: .Indicator, decorationPosition: .BottomRight)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(.black) : Color(.white))
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing:16) {
                    
                    HStack(spacing:8) {
                        Text("Requests")
                            .xelaSubheadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        XelaBadge(text: $badge, background: isDark ? Color(xelaColor: .Blue8) : Color(xelaColor: .Blue11), foregroundColor: isDark ? Color(xelaColor: .Blue1) : Color(xelaColor: .Blue3))
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    
                    VStack(alignment:.leading, spacing:16) {
                        HStack(spacing:16) {
                            XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-1"))
                            VStack(alignment:.leading,spacing:8) {
                                VStack(alignment:.leading,spacing:0) {
                                    Text("Lauralee Quintero ")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("wants to add you to friends")
                                        .xelaSmallBody()
                                        .foregroundColor(Color(xelaColor: .Gray8))
                                }
                                HStack(spacing:12) {
                                    Button(action:{}) {
                                        Text("Accept")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(Color(xelaColor: .Blue6))
                                    }
                                    Button(action:{}) {
                                        Text("Decline")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-2"))
                            VStack(alignment:.leading,spacing:8) {
                                VStack(alignment:.leading,spacing:0) {
                                    Text("Brittni Landoma ")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("wants to add you to friends")
                                        .xelaSmallBody()
                                        .foregroundColor(Color(xelaColor: .Gray8))
                                }
                                HStack(spacing:12) {
                                    Button(action:{}) {
                                        Text("Accept")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(Color(xelaColor: .Blue6))
                                    }
                                    Button(action:{}) {
                                        Text("Decline")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 16)
                    }
                    
                   
                    XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                    
                    HStack(spacing:8) {
                        Text("Suggestions for you")
                            .xelaSubheadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    
                    VStack(alignment:.leading, spacing:16) {
                        HStack(spacing:16) {
                            XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-3"))
                            VStack(alignment:.leading,spacing:8) {
                                VStack(alignment:.leading,spacing:0) {
                                    Text("Lauralee Quintero ")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("Memphis, TN, US")
                                        .xelaSmallBody()
                                        .foregroundColor(Color(xelaColor: .Gray8))
                                }
                                
                            }
                            Spacer()
                            
                            Button(action:{}) {
                                Image("user-plus")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width:15, height: 15)
                                    .foregroundColor(Color(xelaColor: .Blue6))
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-4"))
                            VStack(alignment:.leading,spacing:8) {
                                VStack(alignment:.leading,spacing:0) {
                                    Text("Brittni Landoma ")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("Newark, NJ, US")
                                        .xelaSmallBody()
                                        .foregroundColor(Color(xelaColor: .Gray8))
                                }
                                
                            }
                            Spacer()
                            
                            Button(action:{}) {
                                Image("user-plus")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width:15, height: 15)
                                    .foregroundColor(Color(xelaColor: .Blue6))
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar-1-1"), decoration: .Indicator, decorationPosition: .BottomRight)
                            VStack(alignment:.leading,spacing:8) {
                                VStack(alignment:.leading,spacing:0) {
                                    Text("Antony Herst ")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                    Text("Fort Worth, TX, US")
                                        .xelaSmallBody()
                                        .foregroundColor(Color(xelaColor: .Gray8))
                                }
                            }
                            Spacer()
                            
                            Button(action:{}) {
                                Image("user-plus")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width:15, height: 15)
                                    .foregroundColor(Color(xelaColor: .Blue6))
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                    
                    Button(action:{}) {
                        Text("View All")
                            .xelaButtonSmall()
                            .foregroundColor(Color(xelaColor: .Blue6))
                    }
                    
                    XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                    
                    VStack(spacing:8){
                        HStack(spacing:16) {
                            Button(action:{}) {
                                Text("About")
                                    .xelaSmallBody()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                            Button(action:{}) {
                                Text("Accessibility")
                                    .xelaSmallBody()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                            Button(action:{}) {
                                Text("Help Center")
                                    .xelaSmallBody()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                        }
                        HStack(spacing:16) {
                            Button(action:{}) {
                                Text("Privacy and Terms")
                                    .xelaSmallBody()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                            Button(action:{}) {
                                Text("Advertising")
                                    .xelaSmallBody()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                        }
                    }
                    .padding(.bottom,24)
                }
            }
            
            
        }
        .background(isDark ? Color(.black) : Color(.white))
    }
}
