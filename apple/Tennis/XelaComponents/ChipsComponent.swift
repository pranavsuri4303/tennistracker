//
//  ChipsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ChipsComponent: View {
    var chips: [String] = ["Design", "Arts", "Architecture", "Prototyping", "UI Design", "HTML & CSS", "User Experience", "Business", "Mobile", "Development"]

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Chips")
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
                                Text("Pick a few to help us personalize your account")
                                    .xelaHeadline()
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(spacing: 8) {
                                        XelaChip(text: chips[0], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                        XelaChip(text: chips[1], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                        XelaChip(text: chips[2], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                    }
                                    HStack(spacing: 8) {
                                        XelaChip(text: chips[3], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                        XelaChip(text: chips[4], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                    }
                                    HStack(spacing: 8) {
                                        XelaChip(text: chips[5], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                        XelaChip(text: chips[6], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                    }
                                    HStack(spacing: 8) {
                                        XelaChip(text: chips[7], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                        XelaChip(text: chips[8], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                    }
                                    XelaChip(text: chips[9], size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray11), selectedBorderColor: Color(xelaColor: .Blue6), defaultBackgroundColor: Color(xelaColor: .Gray12), selectedBackgroundColor: Color(xelaColor: .Blue6), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(.white))
                                }
                                Text("You can change these anytime in your profile settings. These just helps us to recommend topics you are interested in")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray6))
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
                                Text("Large")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            VStack(spacing: 16) {
                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "", disabled: true, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "", disabled: true, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "", disabled: false, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "", disabled: false, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "", disabled: true, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "", disabled: true, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "icon", disabled: false, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "icon", disabled: false, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "icon", disabled: true, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "", rightIcon: "icon", disabled: true, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: false, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                    XelaChip(text: "Label", size: .Large, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: true, borderWidth: 2, defaultBorderColor: Color(xelaColor: .Blue3), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), defaultTextColor: Color(xelaColor: .Blue3), selectedTextColor: Color(.white))
                                }
                            }
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
                            VStack(spacing: 16) {
                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "", disabled: true, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "", disabled: true, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "", disabled: false, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "", disabled: false, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "", disabled: true, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "", disabled: true, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "icon", disabled: false, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "icon", disabled: false, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "icon", disabled: true, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "", rightIcon: "icon", disabled: true, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: false, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Medium, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: true, borderWidth: 1, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue11), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }
                            }
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
                            VStack(spacing: 16) {
                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "", disabled: true, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "", disabled: true, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "", disabled: true, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "", disabled: true, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "icon", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "icon", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "icon", disabled: true, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "", rightIcon: "icon", disabled: true, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                XelaDivider()

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "icon", disabled: false, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                }

                                HStack(spacing: 16) {
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: false, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
                                    XelaChip(text: "Label", size: .Small, leftIcon: "icon", rightIcon: "icon", disabled: true, selected: true, borderWidth: 0, defaultBorderColor: Color(xelaColor: .Gray10), selectedBorderColor: Color(xelaColor: .Blue3), defaultBackgroundColor: Color(xelaColor: .Gray11), selectedBackgroundColor: Color(xelaColor: .Blue12), defaultTextColor: Color(xelaColor: .Gray6), selectedTextColor: Color(xelaColor: .Blue3))
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
