//
//  ToggleComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ToggleComponent: View {
    @State var toggle1: Bool = false
    @State var toggle2: Bool = false
    @State var toggle3: Bool = false
    @State var toggle4: Bool = false
    @State var toggle5: Bool = false
    @State var toggle6: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Toggle")
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
                                Text("Large")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            Toggle(isOn: $toggle1, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(size: .Large, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
                            Toggle(isOn: $toggle2, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(icon: "icon", size: .Large, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Medium")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            Toggle(isOn: $toggle3, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(size: .Medium, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
                            Toggle(isOn: $toggle4, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(icon: "icon", size: .Medium, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Small")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            Toggle(isOn: $toggle5, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(size: .Small, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
                            Toggle(isOn: $toggle6, label: {
                                Text("Label")
                                    .xelaButtonMedium()
                            })
                            .toggleStyle(XelaToggleStyle(icon: "icon", size: .Small, onBackgound: Color(xelaColor: .Orange3), offBackground: Color(xelaColor: .Gray11), iconOnColor: Color(xelaColor: .Orange3), iconOffColor: Color(xelaColor: .Gray11)))
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
