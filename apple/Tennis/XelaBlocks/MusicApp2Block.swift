//
//  MusicApp2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 16.08.2021.
//

import SwiftUI

struct MusicApp2Block: View {
    var isDark = false
    @State var toggle1 = true
    @State var toggle2 = false

    @State var slider1: CGFloat = 21
    @State var slider2: CGFloat = 50

    @State var vslider1: CGFloat = 0
    @State var vslider2: CGFloat = -10
    @State var vslider3: CGFloat = -6
    @State var vslider4: CGFloat = 0
    @State var vslider5: CGFloat = 5
    @State var vslider6: CGFloat = 0

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                XelaButton(leftIcon: "arrow-left", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Text("Equalizer")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
                Toggle(isOn: $toggle1, label: {
                    EmptyView()
                })
                .toggleStyle(XelaToggleStyle(size: .Medium, onBackgound: Color(xelaColor: isDark ? .Blue5 : .Blue3), offBackground: Color(xelaColor: isDark ? .Gray3 : .Gray11), circleOffColor: isDark ? Color(xelaColor: .Gray8) : Color(.white), isEmptyLabel: true))
            }
            .padding(.vertical, 24)
            .padding(.horizontal, 24)
            ScrollView {
                VStack(spacing: 20) {
                    HStack {
                        Text("Preset")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        Spacer()
                    }
                    .padding(.horizontal, 24)

                    HStack(spacing: 8) {
                        VStack(spacing: 4) {
                            Text("")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            HStack(spacing: 8) {
                                VStack {
                                    Text("+12 db")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                    Spacer()
                                    Text("0 db")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                    Spacer()
                                    Text("-12 db")
                                        .xelaCaption()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                }
                                VStack(alignment: .trailing, spacing: 0) {
                                    ForEach(Array(stride(from: -12, to: 14, by: 2)), id: \.self) { i in
                                        Rectangle()
                                            .fill(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                                            .frame(width: ((i % 3) == 0) ? 8 : 4, height: 1)
                                        if i != 12 {
                                            Spacer()
                                        }
                                    }
                                }
                                .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                            }
                            .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
                            .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("50")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider1, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("100")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider2, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("200")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider3, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("250")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider4, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("500")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider5, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                        VStack(spacing: 4) {
                            Text("1k")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
                            XelaSlider(value: $vslider6, range: -12 ... 12, step: 1, vertical: true, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                .frame(height: 180)
                        }
                    }
                    .padding(.horizontal, 24)

                    XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        .padding(.horizontal, 24)

                    HStack {
                        Text("Effects")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        Spacer()
                        Toggle(isOn: $toggle2, label: {
                            EmptyView()
                        })
                        .toggleStyle(XelaToggleStyle(size: .Medium, onBackgound: Color(xelaColor: isDark ? .Blue5 : .Blue3), offBackground: Color(xelaColor: isDark ? .Gray3 : .Gray11), circleOffColor: isDark ? Color(xelaColor: .Gray8) : Color(.white), isEmptyLabel: true))
                    }
                    .padding(.horizontal, 24)

                    VStack(alignment: .leading, spacing: 0) {
                        Text("Bass Boost")
                            .xelaCaption()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))

                        if !toggle2 {
                            XelaSlider(value: $slider1, range: 0 ... 100, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), disabled: true)
                        } else {
                            XelaSlider(value: $slider1, range: 0 ... 100, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        }

                        HStack {
                            Text("0%")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
                            Spacer()
                            Text("\(Int(slider1))%")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                            Text("100%")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
                        }
                    }
                    .padding(.horizontal, 24)

                    VStack(alignment: .leading, spacing: 0) {
                        Text("3D Effect")
                            .xelaCaption()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))

                        if !toggle2 {
                            XelaSlider(value: $slider2, range: 0 ... 100, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), disabled: true)
                        } else {
                            XelaSlider(value: $slider2, range: 0 ... 100, primaryColor: Color(xelaColor: .Green3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                        }

                        HStack {
                            Text("0%")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
                            Spacer()
                            Text("\(Int(slider2))%")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Spacer()
                            Text("100%")
                                .xelaCaption()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }

            Spacer()

            HStack(spacing: 24) {
                XelaUserAvatar(size: .Large, style: .Circle, image: Image("musicapp-2"))
                VStack(alignment: .leading, spacing: 4) {
                    Text("Find our way")
                        .xelaBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("Being As An Ocean")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                Button(action: {}) {
                    Image(isDark ? "music-pause-dark" : "music-pause")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
                Button(action: {}) {
                    Image("next")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 15, height: 15)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                .padding(.trailing, 16)
            }
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
            .shadow(color: Color(.black).opacity(0.08), radius: 56, x: 0, y: 4)
            .shadow(color: Color(.black).opacity(0.08), radius: 16, x: 0, y: 12)
        }
        // .padding(EdgeInsets(top: 24, leading: 24, bottom: 0, trailing: 24))
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
}
