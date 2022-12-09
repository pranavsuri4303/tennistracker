//
//  EcommerceCardsBlock.swift
//  XelaExampleApp
//
//  Created by Sherhan on 15.08.2021.
//

import SwiftUI

struct EcommerceCardsBlock: View {
    var isDark = false
    
    @State var badge1 = "Sale"
    @State var isFavorites = false
    
    @State var badge2 = "-20%"
    
    @State var isFavorites2 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing:16) {
                HStack {
                    Text("Ecommerce Cards")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                .padding(24)
                
                Group {
                    card1()
                    card2()
                    card3()
                    card4()
                    card5()
                    card6()
                    card7()
                    card8()
                    card9()
                    card10()
                }
                
                Spacer()
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
    }
    
    @ViewBuilder
    func card10() -> some View {
        VStack(spacing:16) {
            ZStack {
                Image("card-10")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .cornerRadius(16)
            
            
            VStack(spacing:0) {
                
                
                
                HStack(spacing:0) {
                    Spacer()
                    Text("Grey Oversized Elasticated Hem Cropped Sweater")
                        .xelaSmallBodyBold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                
                HStack(spacing: 4) {
                    Text("$52.99")
                        .xelaBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3))
                }
               
            }
            
            
            
            
            
            
            
        }
        .frame(width:240)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
        //.background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card9() -> some View {
        VStack(spacing:16) {
            ZStack {
                Image("card-9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    
                    HStack {
                        
                        XelaBadge(text: $badge1, background: isDark ? Color(xelaColor: .Blue8) : Color(xelaColor: .Blue11), foregroundColor: isDark ? Color(xelaColor: .Blue1) : Color(xelaColor: .Blue3))
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.leading, 8)
                .padding(.top, 8)
            }
            .cornerRadius(16)
            
            
            VStack(spacing:0) {
                
                HStack(spacing: 8) {
                    Text("Running Shoes")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                    Spacer()
                    Image("star-1")
                    Text("4.9")
                        .xelaButtonSmall()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray5))
                }
                
                HStack {
                    Text("Lightweight Gymwear Sport Running Shoes")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                
                
               
            }
            
            
            HStack(spacing: 4) {
                Text("$179.99")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                Spacer()
            }
            
            
            
            
        }
        .frame(width:240)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
        //.background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card8() -> some View {
        VStack(spacing:16) {
            ZStack {
                Image("card-8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    
                    HStack {
                        
                        XelaButton(leftIcon: "heart-1", size: .Small, background: Color(.white), foregroundColor: Color(xelaColor: .Gray2))
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.leading, 8)
                .padding(.top, 8)
            }
            .cornerRadius(16)
            
            
            VStack(spacing:8) {
                
                HStack {
                    Text("Sportswear")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                    Spacer()
                    Text("4 colors")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                }
                
                HStack {
                    Text("Women's Nike Sportswear SWOOSH Hoodie")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                
                
               
            }
            
            
            HStack(spacing: 4) {
                Text("$52.99")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Green1))
                Spacer()
                
                ForEach(1...3, id:\.self) { i in
                    Image("star-1")
                        .renderingMode(.template)
                        .foregroundColor(Color(xelaColor: .Orange5))
                }
                ForEach(1...2, id:\.self) { i in
                    Image("star-2")
                        .renderingMode(.template)
                        .foregroundColor(Color(xelaColor: .Orange5))
                }
                Text("(48)")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
            }
            
            
            
            
        }
        .frame(width:240)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
        //.background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card7() -> some View {
        VStack(spacing:16) {
            ZStack {
                Image("card-7")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        XelaButton(leftIcon: "bag", size: .Medium, background: Color(xelaColor: .Blue5), foregroundColor: Color(.white))
                            .offset(y:24)
                    }
                }
                .padding(.trailing, 16)
            }
            .background(Color(xelaColor: .Red12))
            
            
            VStack(spacing:0) {
                
                HStack {
                    Text("Women’s clothing")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                    Spacer()
                }
                
                HStack {
                    Text("Ribbed Knitted Midi Cardigan")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                
                
                
            }
            .padding(.horizontal, 16)
            
            HStack(spacing: 8) {
                Text("$128.50")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue5))
                
                Spacer()
                
                Text("48 reviews")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Orange3))
            }
            .padding(.horizontal, 16)
            
            
            
        }
        .frame(width:240)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card6() -> some View {
        VStack(spacing:16) {
            ZStack {
                Image("card-6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        XelaButton(leftIcon: "heart-1", size: .Small, background: Color(.white), foregroundColor: Color(xelaColor: .Gray2))
                    }
                }
                .padding(.trailing, 8)
                .padding(.bottom, 8)
            }
            
            
            VStack(spacing:0) {
                HStack {
                    Text("Orange Big Leaf Beach Top")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                
                
                HStack {
                    Text("Brandname")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                    Spacer()
                }
            }
            .padding(.horizontal, 16)
            
            HStack(spacing: 8) {
                Text("£30.00")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Green1))
                Spacer()
            }
            .padding(.horizontal, 16)
            
            
            
        }
        .frame(width:240)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card5() -> some View {
        VStack(spacing:0) {
            ZStack {
                Image("card-5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            
            HStack(spacing: 8) {
                Text("€8.99")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Spacer()
                Image("star-1")
                Text("4.9")
                    .xelaButtonSmall()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray5))
            }
            
            HStack {
                Text("Facial Moisturiser")
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.top, 8)
            
            HStack {
                Text("38ml / 1fl.oz")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                Spacer()
            }
            
            
        }
        .frame(width:208)
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card4() -> some View {
        VStack(spacing:0) {
            ZStack {
                Image("card-4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .background(VStack {
                Circle()
                    .fill(Color(xelaColor: .Orange12))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 21)
                    .opacity(isDark ? 0.16 : 1)
            })
            
            HStack {
                Text("Facial Moisturiser")
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                Spacer()
            }
            
            HStack {
                Text("Size: 4.25fl.oz / 128ml")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                Spacer()
            }
            
            
            HStack(spacing: 8) {
                Text("$12.99")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Spacer()
                XelaButton(leftIcon:"bag", background: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray2), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(.white))
            }
            .padding(.top, 12)
            
        }
        .frame(width:208)
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card3() -> some View {
        VStack(spacing:0) {
            ZStack {
                Image("card-3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            
            Text("Xbox One X")
                .xelaCaption()
                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
            Text("NEON ORANGE SHADOW XBOX GAMEPAD")
                .xelaSmallBodyBold()
                .multilineTextAlignment(.center)
                .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
            
            Text("$168.00")
                .xelaBodyBold()
                .foregroundColor(isDark ? Color(xelaColor: .Orange5) : Color(xelaColor: .Orange3))
                .padding(.top, 12)
            
        }
        .frame(width:192)
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
        .background(
            ZStack {
                isDark ? Color(xelaColor: .Gray2) : Color(.white)
                VStack {
                    Image("bg-card-3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
            }
            
        )
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card2() -> some View {
        VStack(spacing:0) {
            ZStack {
                Image("card-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    HStack {
                        
                        Spacer()
                        XelaBadge(text: $badge2, background: isDark ? Color(xelaColor: .Green2) : Color(xelaColor: .Green11), foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Green1))
                        
                    }
                    Spacer()
                }
            }
            
            Text("Samsung")
                .xelaCaption()
                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
            Text("Galaxy Watch Active 3")
                .xelaSmallBodyBold()
                .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
            
            Text("$168.00")
                .xelaBodyBold()
                .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                .padding(.top, 12)
            
        }
        .frame(width:192)
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func card1() -> some View {
        VStack(spacing:0) {
            ZStack {
                Image("card-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    HStack {
                        XelaBadge(text: $badge1, background: isDark ? Color(xelaColor: .Orange8) : Color(xelaColor: .Orange11), foregroundColor: isDark ? Color(xelaColor: .Orange1) : Color(xelaColor: .Orange3))
                        Spacer()
                        Button(action:{
                            isFavorites.toggle()
                        }) {
                            Image("heart")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width:15, height: 15)
                        }
                        .foregroundColor(isFavorites ? Color(xelaColor: .Orange3) : isDark ? Color(xelaColor: .Gray5) : Color(xelaColor: .Gray9))
                    }
                    Spacer()
                }
            }
            
            HStack {
                Text("Headsets")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                Spacer()
            }
            HStack {
                Text("Arctis 7P Wireless")
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                Spacer()
            }
            
            HStack(spacing: 8) {
                Text("$179.99")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                Spacer()
                Image("star-1")
                Text("4.9")
                    .xelaButtonSmall()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray5))
            }
            .padding(.top, 12)
            
        }
        .frame(width:192)
        .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding(.horizontal, 24)
    }
}

