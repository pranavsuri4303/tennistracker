//
//  Colors.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ColorsComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Colors")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.center, spacing:16) {
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Main colors")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            HStack(spacing:16) {
                                ZStack {
                                    Color(xelaColor: .Blue)
                                        .cornerRadius(20)
                                        
                                    Text(".Blue")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Pink)
                                        .cornerRadius(20)
                                    Text(".Pink")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Green)
                                        .cornerRadius(20)
                                    Text(".Green")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Yellow)
                                        .cornerRadius(20)
                                    Text(".Yellow")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                            }
                            .frame(height: 68)
                            HStack(spacing:16) {
                                ZStack {
                                    Color(xelaColor: .Orange)
                                        .cornerRadius(20)
                                        
                                    Text(".Orange")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Red)
                                        .cornerRadius(20)
                                    Text(".Red")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Purple)
                                        .cornerRadius(20)
                                    Text(".Purple")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                                ZStack {
                                    Color(xelaColor: .Gray)
                                        .cornerRadius(20)
                                    Text(".Gray")
                                        .xelaCaption()
                                        .foregroundColor(Color(.white))
                                }
                                .frame(width:68)
                            }
                            .frame(height: 68)
                            Group {
                                createGrayColorShades()
                                
                                createBlueColorShades()
                                
                                createPinkColorShades()
                                
                                createGreenColorShades()
                                
                                createYellowColorShades()
                                
                                createOrangeColorShades()
                                
                                createRedColorShades()
                                
                                createPurpleColorShades()
                            }
                            
                            Group {
                                createGradientsColor()
                            }
                        }
                        
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(.white))
    }
    
    @ViewBuilder
    func createGradientsColor() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Gradients")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Pink), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Pink to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Green), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Green to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Yellow), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Yellow to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Orange), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Orange to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Red), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Red to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Blue)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Purple to .Blue")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Green), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Green to .Pink")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Yellow), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Yellow to .Pink")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Orange), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Orange to .Pink")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Red), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Red to .Pink")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Pink)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Purple to .Pink")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Red), Color(xelaColor: .Orange)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Red to .Orange")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Orange), Color(xelaColor: .Yellow)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Orange to .Yellow")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Red), Color(xelaColor: .Yellow)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Red to .Yellow")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Yellow)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Purple to .Yellow")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Orange)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Purple to .Orange")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Purple), Color(xelaColor: .Red)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Purple to .Red")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Red), Color(xelaColor: .Green)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Red to .Green")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
            HStack(spacing:16) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Yellow), Color(xelaColor: .Green)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Yellow to .Green")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(xelaColor: .Orange), Color(xelaColor: .Green)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        .cornerRadius(20)

                    Text(".Orange to .Green")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:136)
            }
            .frame(height: 68)
            
        }
    }
    
    @ViewBuilder
    func createPurpleColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Purple shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Purple1)
                        .cornerRadius(20)
                        
                    Text(".Purple1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple2)
                        .cornerRadius(20)
                    Text(".Purple2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple3)
                        .cornerRadius(20)
                    Text(".Purple3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple4)
                        .cornerRadius(20)
                    Text(".Purple4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Purple5)
                        .cornerRadius(20)
                        
                    Text(".Purple5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple6)
                        .cornerRadius(20)
                    Text(".Purple6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple7)
                        .cornerRadius(20)
                    Text(".Purple7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple8)
                        .cornerRadius(20)
                    Text(".Purple8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Purple9)
                        .cornerRadius(20)
                        
                    Text(".Purple9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple10)
                        .cornerRadius(20)
                    Text(".Purple10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple11)
                        .cornerRadius(20)
                    Text(".Purple11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Purple12)
                        .cornerRadius(20)
                    Text(".Purple12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createRedColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Red shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Red1)
                        .cornerRadius(20)
                        
                    Text(".Red1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red2)
                        .cornerRadius(20)
                    Text(".Red2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red3)
                        .cornerRadius(20)
                    Text(".Red3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red4)
                        .cornerRadius(20)
                    Text(".Red4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Red5)
                        .cornerRadius(20)
                        
                    Text(".Red5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red6)
                        .cornerRadius(20)
                    Text(".Red6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red7)
                        .cornerRadius(20)
                    Text(".Red7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red8)
                        .cornerRadius(20)
                    Text(".Red8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Red9)
                        .cornerRadius(20)
                        
                    Text(".Red9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red10)
                        .cornerRadius(20)
                    Text(".Red10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red11)
                        .cornerRadius(20)
                    Text(".Red11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Red12)
                        .cornerRadius(20)
                    Text(".Red12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createOrangeColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Orange shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Orange1)
                        .cornerRadius(20)
                        
                    Text(".Orange1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange2)
                        .cornerRadius(20)
                    Text(".Orange2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange3)
                        .cornerRadius(20)
                    Text(".Orange3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange4)
                        .cornerRadius(20)
                    Text(".Orange4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Orange5)
                        .cornerRadius(20)
                        
                    Text(".Orange5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange6)
                        .cornerRadius(20)
                    Text(".Orange6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange7)
                        .cornerRadius(20)
                    Text(".Orange7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange8)
                        .cornerRadius(20)
                    Text(".Orange8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Orange9)
                        .cornerRadius(20)
                        
                    Text(".Orange9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange10)
                        .cornerRadius(20)
                    Text(".Orange10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange11)
                        .cornerRadius(20)
                    Text(".Orange11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Orange12)
                        .cornerRadius(20)
                    Text(".Orange12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createYellowColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Yellow shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Yellow1)
                        .cornerRadius(20)
                        
                    Text(".Yellow1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow2)
                        .cornerRadius(20)
                    Text(".Yellow2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow3)
                        .cornerRadius(20)
                    Text(".Yellow3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow4)
                        .cornerRadius(20)
                    Text(".Yellow4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Yellow5)
                        .cornerRadius(20)
                        
                    Text(".Yellow5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow6)
                        .cornerRadius(20)
                    Text(".Yellow6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow7)
                        .cornerRadius(20)
                    Text(".Yellow7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow8)
                        .cornerRadius(20)
                    Text(".Yellow8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Yellow9)
                        .cornerRadius(20)
                        
                    Text(".Yellow9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow10)
                        .cornerRadius(20)
                    Text(".Yellow10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow11)
                        .cornerRadius(20)
                    Text(".Yellow11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Yellow12)
                        .cornerRadius(20)
                    Text(".Yellow12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createGreenColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Green shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Green1)
                        .cornerRadius(20)
                        
                    Text(".Green1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green2)
                        .cornerRadius(20)
                    Text(".Green2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green3)
                        .cornerRadius(20)
                    Text(".Green3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green4)
                        .cornerRadius(20)
                    Text(".Green4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Green5)
                        .cornerRadius(20)
                        
                    Text(".Green5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green6)
                        .cornerRadius(20)
                    Text(".Green6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green7)
                        .cornerRadius(20)
                    Text(".Green7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green8)
                        .cornerRadius(20)
                    Text(".Green8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Green9)
                        .cornerRadius(20)
                        
                    Text(".Green9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green10)
                        .cornerRadius(20)
                    Text(".Green10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green11)
                        .cornerRadius(20)
                    Text(".Green11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Green12)
                        .cornerRadius(20)
                    Text(".Green12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createPinkColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Pink shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Pink1)
                        .cornerRadius(20)
                        
                    Text(".Pink1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink2)
                        .cornerRadius(20)
                    Text(".Pink2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink3)
                        .cornerRadius(20)
                    Text(".Pink3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink4)
                        .cornerRadius(20)
                    Text(".Pink4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Pink5)
                        .cornerRadius(20)
                        
                    Text(".Pink5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink6)
                        .cornerRadius(20)
                    Text(".Pink6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink7)
                        .cornerRadius(20)
                    Text(".Pink7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink8)
                        .cornerRadius(20)
                    Text(".Pink8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Pink9)
                        .cornerRadius(20)
                        
                    Text(".Pink9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink10)
                        .cornerRadius(20)
                    Text(".Pink10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink11)
                        .cornerRadius(20)
                    Text(".Pink11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Pink12)
                        .cornerRadius(20)
                    Text(".Pink12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createBlueColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Blue shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Blue1)
                        .cornerRadius(20)
                        
                    Text(".Blue1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue2)
                        .cornerRadius(20)
                    Text(".Blue2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue3)
                        .cornerRadius(20)
                    Text(".Blue3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue4)
                        .cornerRadius(20)
                    Text(".Blue4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Blue5)
                        .cornerRadius(20)
                        
                    Text(".Blue5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue6)
                        .cornerRadius(20)
                    Text(".Blue6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue7)
                        .cornerRadius(20)
                    Text(".Blue7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue8)
                        .cornerRadius(20)
                    Text(".Blue8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Blue9)
                        .cornerRadius(20)
                        
                    Text(".Blue9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue10)
                        .cornerRadius(20)
                    Text(".Blue10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue11)
                        .cornerRadius(20)
                    Text(".Blue11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Blue12)
                        .cornerRadius(20)
                    Text(".Blue12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
    
    @ViewBuilder
    func createGrayColorShades() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Gray shades")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Gray1)
                        .cornerRadius(20)
                        
                    Text(".Gray1")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray2)
                        .cornerRadius(20)
                    Text(".Gray2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray3)
                        .cornerRadius(20)
                    Text(".Gray3")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray4)
                        .cornerRadius(20)
                    Text(".Gray4")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Gray5)
                        .cornerRadius(20)
                        
                    Text(".Gray5")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray6)
                        .cornerRadius(20)
                    Text(".Gray6")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray7)
                        .cornerRadius(20)
                    Text(".Gray7")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray8)
                        .cornerRadius(20)
                    Text(".Gray8")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                }
                .frame(width:68)
            }
            .frame(height: 68)
            HStack(spacing:16) {
                ZStack {
                    Color(xelaColor: .Gray9)
                        .cornerRadius(20)
                        
                    Text(".Gray9")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray10)
                        .cornerRadius(20)
                    Text(".Gray10")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray11)
                        .cornerRadius(20)
                    Text(".Gray11")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
                ZStack {
                    Color(xelaColor: .Gray12)
                        .cornerRadius(20)
                    Text(".Gray12")
                        .xelaCaption()
                        .foregroundColor(Color(.black))
                }
                .frame(width:68)
            }
            .frame(height: 68)
        }
    }
}
