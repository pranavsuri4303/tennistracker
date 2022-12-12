//
//  TabsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct TabsComponent: View {
    var tabs: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "Chips", icon: "user-circle", badgeText: ""), XelaTabsItem(id: 1, label: "Badge", icon: "", badgeText: "2")]

    @State var selectedTabId: Int = 0

    @State var badge1: String = "13"
    @State var badge2: String = "38"
    @State var badge3: String = "35"
    @State var badge4: String = "6"

    var chips: [String] = ["Design", "Arts", "Architecture", "Prototyping", "UI Design", "HTML & CSS", "User Experience", "Business", "Mobile", "Development"]

    var tabs1: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "Label", icon: "", badgeText: ""), XelaTabsItem(id: 1, label: "Label", icon: "", badgeText: ""), XelaTabsItem(id: 2, label: "Label", icon: "", badgeText: "")]

    var tabs2: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "Label", icon: "icon", badgeText: ""), XelaTabsItem(id: 1, label: "Label", icon: "icon", badgeText: ""), XelaTabsItem(id: 2, label: "Label", icon: "icon", badgeText: "")]

    var tabs3: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "Label", icon: "icon", badgeText: "1"), XelaTabsItem(id: 1, label: "Label", icon: "icon", badgeText: "2")]

    var tabs4: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "Label", icon: "", badgeText: "1"), XelaTabsItem(id: 1, label: "Label", icon: "", badgeText: "2"), XelaTabsItem(id: 2, label: "Label", icon: "", badgeText: "3")]

    var tabs5: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "", icon: "icon", badgeText: "1"), XelaTabsItem(id: 1, label: "", icon: "icon", badgeText: "2"), XelaTabsItem(id: 2, label: "", icon: "icon", badgeText: "3")]

    var tabs6: [XelaTabsItem] = [XelaTabsItem(id: 0, label: "", icon: "icon", badgeText: ""), XelaTabsItem(id: 1, label: "", icon: "icon", badgeText: ""), XelaTabsItem(id: 2, label: "", icon: "icon", badgeText: "")]

    @State var selectedTab1Id: Int = 0
    @State var selectedTab2Id: Int = 0
    @State var selectedTab3Id: Int = 0
    @State var selectedTab4Id: Int = 0
    @State var selectedTab5Id: Int = 0
    @State var selectedTab6Id: Int = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Tabs")
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
                                Text("Components")
                                    .xelaHeadline()
                                XelaTabs(items: tabs, selectedId: $selectedTabId)
                                switch selectedTabId {
                                case 0:
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
                                case 1:
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
                                default:
                                    EmptyView()
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
                            XelaTabs(items: tabs1, selectedId: $selectedTab1Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
                            XelaTabs(items: tabs2, selectedId: $selectedTab2Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
                            XelaTabs(items: tabs3, selectedId: $selectedTab3Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
                            XelaTabs(items: tabs4, selectedId: $selectedTab4Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
                            XelaTabs(items: tabs5, selectedId: $selectedTab5Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
                            XelaTabs(items: tabs6, selectedId: $selectedTab6Id, primaryColor: Color(xelaColor: .Blue3), secondaryColor: Color(xelaColor: .Gray6), badgeBackground: Color(xelaColor: .Orange3), badgeTextColor: Color(.white), bottomLineColor: Color(xelaColor: .Gray10))
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
