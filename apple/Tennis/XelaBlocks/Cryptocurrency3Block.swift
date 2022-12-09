//
//  Cryptocurrency3Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct Cryptocurrency3Block: View {
    var isDark = false
    var body: some View {
        VStack(spacing:24) {
            HStack(spacing:16) {
                XelaButton(leftIcon:"down-1", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text("My Account")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
            }
            .padding(.top, 24)
            .padding(.horizontal, 16)
            
            HStack(spacing: 16) {
                VStack(alignment:.leading, spacing:0) {
                    Text("Your active Deposit")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                    Text("$525,834.12")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                Spacer()
                Button(action:{}) {
                    HStack(spacing:8) {
                        Text("View transactions")
                            .xelaSmallBodyBold()
                            
                        Image("right-small")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width:15, height:15)
                        
                    }
                }
                .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
            }
            .padding(.horizontal, 16)
            
            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                .padding(.horizontal, 16)
            ScrollView {
                VStack(spacing:24) {
                    VStack(spacing:8) {
                        HStack {
                            Text("Balances")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                            XelaButton(text:"Add New", rightIcon: "add-small", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        }
                        
                        HStack(spacing:8) {
                            VStack(spacing:8) {
                                HStack {
                                    Image("ethereum")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Spacer()
                                }
                                VStack(spacing:0) {
                                    HStack {
                                        Text("83.874 ETH")
                                            .xelaSubheadline()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Spacer()
                                            
                                    }
                                    HStack {
                                        Text("$3,284.00")
                                            .xelaCaption()
                                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                        Spacer()
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                            .cornerRadius(16)
                            
                            VStack(spacing:8) {
                                HStack {
                                    Image("bitcoin")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Spacer()
                                }
                                VStack(spacing:0) {
                                    HStack {
                                        Text("1 BTC")
                                            .xelaSubheadline()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Spacer()
                                            
                                    }
                                    HStack {
                                        Text("$8,006.00 ")
                                            .xelaCaption()
                                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                        Spacer()
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                            .cornerRadius(16)
                        }
                        
                        HStack(spacing:8) {
                            VStack(spacing:8) {
                                HStack {
                                    Image("dash")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Spacer()
                                }
                                VStack(spacing:0) {
                                    HStack {
                                        Text("1000 DASH")
                                            .xelaSubheadline()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Spacer()
                                            
                                    }
                                    HStack {
                                        Text("$2,833.00")
                                            .xelaCaption()
                                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                        Spacer()
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                            .cornerRadius(16)
                            
                            VStack(spacing:8) {
                                HStack {
                                    Image("binance")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Spacer()
                                }
                                VStack(spacing:0) {
                                    HStack {
                                        Text("0.04869 BIN")
                                            .xelaSubheadline()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Spacer()
                                            
                                    }
                                    HStack {
                                        Text("$1,366.00")
                                            .xelaCaption()
                                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                        Spacer()
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                            .cornerRadius(16)
                        }
                    }
                    .padding(.horizontal, 16)
                    VStack(spacing:16) {
                        HStack {
                            Text("Exchange rate")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                        }
                        .padding(.horizontal, 16)
                        
                        HStack {
                            Text("Name")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            Spacer()
                            Text("Value")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                        }
                        .padding(.horizontal, 16)
                        
                        rate(image: "bitcoin", title: "Bitcoin", caption: "BTC", price: "$5,950", percent: "6.82%", up: false)
                            .padding(.horizontal, 16)
                        rate(image: "ethereum", title: "Etherium", caption: "ETH", price: "$3,698", percent: "3.19%", up: true)
                            .padding(.horizontal, 16)
                        rate(image: "dash", title: "Dash", caption: "DASH", price: "$1,698", percent: "1.29%", up: false)
                            .padding(.horizontal, 16)
                        rate(image: "binance", title: "Binance", caption: "BIN", price: "$4,698", percent: "9.13%", up: true)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 24)
                    }
                    
                    
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
    
    @ViewBuilder
    func rate(image:String, title:String, caption:String, price:String, percent:String, up:Bool) -> some View {
        HStack(spacing:12) {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width:24, height: 24)
                    .padding(8)
            }
            .background(isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray12))
            .cornerRadius(8)
            
            VStack(alignment:.leading, spacing:0) {
                Text(title)
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text(caption)
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
            }
            
            Spacer()
            VStack(alignment:.trailing, spacing:0) {
                Text(price)
                    .xelaButtonMedium()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                HStack(spacing:0) {
                    Image(up ? "arrow-up-small" : "arrow-down-small")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(xelaColor: up ? .Green1 : .Red6))
                        .frame(width:15, height: 15)
                    Text(percent)
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: up ? .Green1 : .Red6))
                }
            }
        }
    }
}

