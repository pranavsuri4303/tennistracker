//
//  TooltipsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct TooltipsComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Tooltips")
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
                            VStack {
                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Top, arrowAlign: .Center, textColor: Color(.white), backgroundColor: Color(xelaColor: .Green2))
                                XelaButton(leftIcon: "icon")
                            }
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Top")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Top, arrowAlign: .Leading, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Top, arrowAlign: .Center, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Top, arrowAlign: .Trailing, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))
                            }
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Bottom")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Bottom, arrowAlign: .Leading, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Bottom, arrowAlign: .Center, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Bottom, arrowAlign: .Trailing, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))
                            }
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Left")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Left, arrowAlign: .Leading, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Left, arrowAlign: .Center, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Left, arrowAlign: .Trailing, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))
                            }
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Right")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack {
                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Right, arrowAlign: .Leading, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Right, arrowAlign: .Center, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))

                                XelaTooltip(text: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.", tooltipAlign: .Right, arrowAlign: .Trailing, textColor: Color(.white), backgroundColor: Color(xelaColor: .Gray3))
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
