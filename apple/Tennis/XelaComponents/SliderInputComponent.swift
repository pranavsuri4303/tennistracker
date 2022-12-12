//
//  SliderInputComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct SliderInputComponent: View {
    @State var sliderValue1: CGFloat = 0
    @State var sliderValue2: CGFloat = 20
    @State var sliderValue3: CGFloat = 40

    @State var sliderValue4: CGFloat = 0
    @State var sliderValue5: CGFloat = 20
    @State var sliderValue6: CGFloat = 40

    @State var sliderValue7: CGFloat = 60

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Slider Input")
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
                                Text("Usage example")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            HStack {
                                Image("bulb-off")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                XelaSlider(value: $sliderValue7, range: 0 ... 100, step: 1, vertical: false, primaryColor: Color(xelaColor: .Green2))
                                Image("bulb-on")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(EdgeInsets(top: 14, leading: 24, bottom: 14, trailing: 24))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Horizontal")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaSlider(value: $sliderValue1, range: 0 ... 100, step: 20, vertical: false, primaryColor: Color(xelaColor: .Blue3))

                                XelaSlider(value: $sliderValue2, range: 0 ... 100, vertical: false, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Orange3))

                                XelaSlider(value: $sliderValue3, range: 0 ... 100, vertical: false, disabled: true)
                            }
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Vertical")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            HStack {
                                XelaSlider(value: $sliderValue4, range: 0 ... 100, step: 20, vertical: true, primaryColor: Color(xelaColor: .Blue3))

                                XelaSlider(value: $sliderValue5, range: 0 ... 100, vertical: true, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Orange3))

                                XelaSlider(value: $sliderValue6, range: 0 ... 100, vertical: true, disabled: true)
                            }
                            .frame(height: 200)
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
