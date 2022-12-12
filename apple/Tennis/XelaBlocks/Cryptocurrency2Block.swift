//
//  Cryptocurrency2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct Cryptocurrency2Block: View {
    var isDark = false

    @StateObject var datasets = XelaLineDatasets(
        datasets: [
            XelaLineChartDataset(label: "Trending", data: [1, 3.1, 2.2, 2.5, 4.1, 3.8, 2.5], borderColor: Color(xelaColor: .Green), pointColor: Color.clear, fillColor: Color(xelaColor: .Green), tension: 0),
        ],
        dataStep: 1,
        beginAtZero: true
    )

    var body: some View {
        VStack(spacing: 24) {
            HStack(spacing: 16) {
                XelaButton(leftIcon: "left", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Text("My Wallet")
                    .xelaHeadline()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("mapp-1"), decoration: .Indicator, decorationPosition: .BottomRight)
            }
            .padding(.top, 24)
            .padding(.horizontal, 16)

            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                .padding(.horizontal, 16)

            HStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Current Balance")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                    Text("0.00004869 ETH")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    HStack(spacing: 24) {
                        Text("$4,231.01")
                            .xelaSmallBodyBold()
                            .foregroundColor(Color(xelaColor: .Blue6))
                        HStack(spacing: 0) {
                            Image("arrow-up-small")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color(xelaColor: .Green1))
                            Text("4.52%")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Green1))
                        }
                    }
                }
                Spacer()
                Image("crypto-6")
                    .resizable()
                    .frame(height: 40)
                    .aspectRatio(contentMode: .fit)
            }
            .padding(.horizontal, 16)

            HStack {
                XelaButton(text: "Buy", size: .Small, type: .Primary, background: Color(xelaColor: .Blue6), foregroundColor: Color(.white), autoResize: false)
                Spacer()
                XelaButton(text: "Sell", size: .Small, type: .Secondary, background: Color(xelaColor: isDark ? .Gray3 : .Gray11), foregroundColor: Color(xelaColor: .Orange3), defaultBorderColor: Color(xelaColor: isDark ? .Gray3 : .Gray11), autoResize: false)
                Spacer()
                XelaButton(text: "Trade", size: .Small, type: .Secondary, background: Color(xelaColor: isDark ? .Gray3 : .Gray11), foregroundColor: Color(xelaColor: .Blue6), defaultBorderColor: Color(xelaColor: isDark ? .Gray3 : .Gray11), autoResize: false)
            }
            .padding(.horizontal, 16)

            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                .padding(.horizontal, 16)

            HStack {
                Text("Trending")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                Spacer()
            }
            .padding(.horizontal, 16)

            XelaChart(type: .Line, labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"], datasetsLineChart: datasets, labelsColor: Color(xelaColor: isDark ? .Gray4 : .Gray10), chartBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray12), labelsFormat: "%.0f", beforeLabel: "", afterLabel: "k")
                .frame(height: 200)
                .padding(.horizontal, 16)

            Spacer()

            Button(action: {}) {
                VStack(spacing: 0) {
                    Text("Transactions")
                        .xelaButtonSmall()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                    Image("down-small")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color(xelaColor: .Blue6))
                }
            }
            .padding(.bottom, 24)
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
}
