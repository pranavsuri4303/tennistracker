//
//  MusicApp1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 16.08.2021.
//

import SwiftUI

struct MusicApp1Block: View {
    var isDark = false
    @State var likeActive = false
    var body: some View {
        VStack(spacing:20) {
            HStack {
                XelaButton(leftIcon:"down", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Text("Now Playing")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                XelaButton(leftIcon:"more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
            }
            ZStack {
                
                Image("musicapp-1")
                    .resizable()
                    .frame(width:248, height:248)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(64)
                    .blur(radius: 40)
                    .opacity(0.64)
                    .offset(y: 24)
                
                Image("musicapp-1")
                    .resizable()
                    .frame(width:256, height:256)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(24)
                
            }
            
            VStack(spacing:0) {
                Text("Let Me Be Your Superhero")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text("Smash Into Pieces")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            VStack(spacing:0) {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 99)
                        .fill(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray10))
                        .frame(height:2)
                    
                    RoundedRectangle(cornerRadius: 99)
                        .fill(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        .frame(width:115, height:4)
                    
                    Circle()
                        .fill(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        .frame(width:12, height:12)
                        .offset(x:115-6)
                    
                }
                HStack {
                    Text("16:44")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                    
                    Spacer()
                    Text("3:02:05")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                
            }
            
            HStack(spacing:34) {
                Button(action:{likeActive.toggle()}) {
                    if likeActive {
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
                            .foregroundColor(isDark ? Color(xelaColor: .Gray5) : Color(xelaColor: .Gray8))
                    }
                }
                Button(action:{}) {
                    Image("prev")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                
                Button(action:{}) {
                    Image("play-circle")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:56, height:56)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                
                Button(action:{}) {
                    Image("next")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                
                Button(action:{}) {
                    Image("loop")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray5) : Color(xelaColor: .Gray8))
                }
            }
            
            VStack(spacing:0) {
                Text("Next")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
                Text("Just Close Your Eyes - Fivefold")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            
            Button(action:{}) {
                VStack(spacing:0) {
                    Image("up-small")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:15, height:15)
                    Text("More")
                        .xelaCaption()
                }
                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
            }
            
            Spacer()
        }
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 16, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
}

