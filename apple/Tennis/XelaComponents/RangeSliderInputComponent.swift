//
//  RangeSliderInputComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct RangeSliderInputComponent: View {
    @State var valueLeft1: CGFloat = 40
    @State var valueRight1: CGFloat = 60

    @State var valueLeft2: CGFloat = 20
    @State var valueRight2: CGFloat = 80

    @State var valueLeft3: CGFloat = 10
    @State var valueRight3: CGFloat = 90

    @State var valueLeft4: CGFloat = 0
    @State var valueRight4: CGFloat = 520

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Range Slider Input")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)

            ScrollView {
                HStack(spacing: 0) {
                    VStack(alignment: .center, spacing: 16) {
                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Usage Example")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Price Range")
                                    .xelaHeadline()
                                XelaDivider(style: .Dotted, color: Color(xelaColor: .Gray11))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("$\(Int(valueLeft4)) - $\(Int(valueRight4))")
                                        .xelaSubheadline()
                                        .foregroundColor(Color(xelaColor: .Blue3))
                                    Text("Average price: $345")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray6))
                                }

                                VStack(spacing: 0) {
                                    XelaRangeSlider(valueLeft: $valueLeft4, valueRight: $valueRight4, range: 0 ... 1000, step: 10, primaryColor: Color(xelaColor: .Green3), secondaryColor: Color(xelaColor: .Gray11))
                                    HStack {
                                        Text("$0")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray6))
                                            .padding(.leading, 8)
                                        Spacer()
                                        Text("$1000")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray6))
                                    }
                                }
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Variants")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaRangeSlider(valueLeft: $valueLeft1, valueRight: $valueRight1, range: 0 ... 100, step: 10, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray11))

                                XelaRangeSlider(valueLeft: $valueLeft2, valueRight: $valueRight2, range: 0 ... 100, step: 1, primaryColor: Color(xelaColor: .Purple3), secondaryColor: Color(xelaColor: .Purple11))

                                XelaRangeSlider(valueLeft: $valueLeft3, valueRight: $valueRight3, range: 0 ... 100, step: 1, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray11), disabled: true)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(xelaColor: .Gray12))
    }
}
