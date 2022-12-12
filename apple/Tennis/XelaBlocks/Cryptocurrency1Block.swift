//
//  Cryptocurrency1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct Cryptocurrency1Block: View {
    var isDark = false

    @State var searchText: String = ""
    @State var searchState: XelaTextFieldState = .Default
    @State var searchHelperText: String = ""

    var cryptos: [Crypto] = [
        Crypto(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("crypto-1"), background: Color(xelaColor: .Orange3).opacity(0.16)), label: "Bitcoin", caption: "BTC", price: "$5,950", percent: "6.82%", up: false),
        Crypto(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("crypto-2"), background: Color(xelaColor: .Purple3).opacity(0.16)), label: "Etherium", caption: "ETH", price: "$3,698", percent: "3.19%", up: true),
        Crypto(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("crypto-3"), background: Color(xelaColor: .Red3).opacity(0.16)), label: "Monero", caption: "XMR", price: "$76,500", percent: "7.91%", up: false),
        Crypto(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("crypto-4"), background: Color(xelaColor: .Blue3).opacity(0.16)), label: "Litecoin", caption: "LTC", price: "$84,311", percent: "31.29%", up: true),
        Crypto(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("crypto-5"), background: Color(xelaColor: .Green3).opacity(0.16)), label: "Bitcoin Cash", caption: "BTCC", price: "$744.07", percent: "26.3%", up: true),
    ]

    var body: some View {
        VStack(spacing: 24) {
            HStack(spacing: 16) {
                XelaButton(leftIcon: "arrow-left", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text("Live prices")
                    .xelaSubheadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                ZStack {
                    Image("bell-1")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    VStack {
                        HStack {
                            Spacer()
                            Circle()
                                .fill(Color(xelaColor: .Orange3))
                                .frame(width: 6, height: 6)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        Spacer()
                    }
                }
                .frame(width: 20, height: 20)
            }
            .padding(.vertical, 24)
            .padding(.horizontal, 24)

            HStack(spacing: 16) {
                VStack(spacing: 0) {
                    Text("Market Cap")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                    Text("$1.84B")
                        .xelaSubheadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    HStack(spacing: 0) {
                        Image("arrow-up-small")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color(xelaColor: .Green1))
                            .frame(width: 15, height: 15)
                        Text("3.19%")
                            .xelaCaption()
                            .foregroundColor(Color(xelaColor: .Green1))
                    }
                }

                Spacer()

                VStack(spacing: 0) {
                    Text("24h Volume")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                    Text("$235B")
                        .xelaSubheadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    HStack(spacing: 0) {
                        Image("arrow-up-small")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color(xelaColor: .Green1))
                            .frame(width: 15, height: 15)
                        Text("9.55%")
                            .xelaCaption()
                            .foregroundColor(Color(xelaColor: .Green1))
                    }
                }

                Spacer()

                VStack(spacing: 0) {
                    Text("BTC Dominance")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                    Text("64.47%")
                        .xelaSubheadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    HStack(spacing: 0) {
                        Image("arrow-up-small")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color(xelaColor: .Green1))
                            .frame(width: 15, height: 15)
                        Text("4.52%")
                            .xelaCaption()
                            .foregroundColor(Color(xelaColor: .Green1))
                    }
                }
            }
            .padding(.horizontal, 24)

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
            .padding(.horizontal, 24)

            ScrollView {
                VStack(spacing: 24) {
                    ForEach(cryptos) { crypto in
                        cryptoView(crypto: crypto)
                            .padding(.horizontal, 24)
                    }
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }

    @ViewBuilder
    func cryptoView(crypto: Crypto) -> some View {
        HStack(spacing: 12) {
            crypto.avatar
            VStack(alignment: .leading, spacing: 0) {
                Text(crypto.label)
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text(crypto.caption)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 0) {
                Text(crypto.price)
                    .xelaButtonMedium()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                HStack(spacing: 0) {
                    Image(crypto.up ? "arrow-up-small" : "arrow-down-small")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(xelaColor: crypto.up ? .Green1 : .Red6))
                        .frame(width: 15, height: 15)
                    Text(crypto.percent)
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: crypto.up ? .Green1 : .Red6))
                }
            }
        }
    }
}

struct Crypto: Identifiable {
    var id: Int
    var avatar: XelaUserAvatar
    var label: String
    var caption: String
    var price: String
    var percent: String
    var up: Bool
}
