//
//  BadgeComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct BadgeComponent: View {
    @State var badge1: String = "13"
    @State var badge2: String = "38"
    @State var badge3: String = "35"
    @State var badge4: String = "6"
    @State var badge5: String = "Label text"
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Badge")
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
                            VStack(alignment: .leading, spacing: 24) {
                                Text("Additional information")
                                    .xelaHeadline()
                                XelaDivider(style: .Dotted)
                                VStack(spacing: 16) {
                                    HStack {
                                        Text("Device Fingerprint")
                                            .xelaButtonMedium()
                                        Spacer()
                                        XelaBadge(text: $badge1, background: Color(xelaColor: .Blue11), foregroundColor: Color(xelaColor: .Blue3))
                                    }
                                    HStack {
                                        Text("User Agent")
                                            .xelaButtonMedium()
                                        Spacer()
                                        XelaBadge(text: $badge2, background: Color(xelaColor: .Red11), foregroundColor: Color(xelaColor: .Red3))
                                    }
                                    HStack {
                                        Text("IP")
                                            .xelaButtonMedium()
                                        Spacer()
                                        XelaBadge(text: $badge3, background: Color(xelaColor: .Orange11), foregroundColor: Color(xelaColor: .Orange3))
                                    }
                                    HStack {
                                        Text("Attempts")
                                            .xelaButtonMedium()
                                        Spacer()
                                        XelaBadge(text: $badge4, background: Color(xelaColor: .Green11), foregroundColor: Color(xelaColor: .Green1))
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
                            VStack(spacing: 24) {
                                HStack(spacing: 24) {
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Pink3), foregroundColor: Color(.white))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Green2), foregroundColor: Color(.white))
                                }
                                HStack(spacing: 24) {
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Yellow3), foregroundColor: Color(xelaColor: .Gray2))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Orange3), foregroundColor: Color(.white))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Red3), foregroundColor: Color(.white))
                                }
                                HStack(spacing: 24) {
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Purple3), foregroundColor: Color(xelaColor: .Gray2))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Gray3), foregroundColor: Color(.white))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Blue11), foregroundColor: Color(xelaColor: .Blue3))
                                }
                                HStack(spacing: 24) {
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Pink11), foregroundColor: Color(xelaColor: .Pink3))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Green11), foregroundColor: Color(xelaColor: .Green1))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Yellow11), foregroundColor: Color(xelaColor: .Yellow1))
                                }
                                HStack(spacing: 24) {
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Orange11), foregroundColor: Color(xelaColor: .Orange3))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Red11), foregroundColor: Color(xelaColor: .Red3))
                                    XelaBadge(text: $badge5, background: Color(xelaColor: .Purple11), foregroundColor: Color(xelaColor: .Purple3))
                                }
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
