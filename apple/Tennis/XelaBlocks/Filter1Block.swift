//
//  Filter1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Filter1Block: View {
    var isDark = false
    
    @State var selectedSegment:Int = 0
    
    @State var sourceIsOpen = true
    @State var dataIsOpen = true
    @State var popularIsOpen = true
    
    
    @State var typeValue = "Heatmap"
    @State var typeState:XelaTextFieldState = .Default
    @State var typeHelperText = ""
    
    @State var sourceValue = "Twitter"
    @State var sourceState:XelaTextFieldState = .Default
    @State var sourceHelperText = ""
    
    @State var valueLeft:CGFloat = 20
    @State var valueRight:CGFloat = 90
    
    var body: some View {
        VStack(spacing:16) {
            VStack(alignment: .leading, spacing:8) {
                HStack {
                    Text("Filters")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Spacer()
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)
            
            
            
            XelaSegmentedControll(
                items: [XelaSegmentedControllItem(id: 0, label: "General"), XelaSegmentedControllItem(id: 1, label: "Trend")],
                selectedId: $selectedSegment,
                primaryBackground: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3),
                secondaryBackground: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray12),
                primaryFontColor: Color(.white),
                secondaryFontColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
            )
            .padding(.horizontal, 24)
            
            ScrollView {
                VStack(spacing:8) {
                    XelaAccordion(title: "Source", isOpen: $sourceIsOpen, rightIconClose: "add", rightIconOpen: "minus", backgroundOpen: Color.clear, backgroundClose: Color.clear, titleColorClose: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), titleColorOpen: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), dividerColor: Color.clear, iconsSize: 15) {
                        VStack(spacing:16) {
                            XelaTextField(
                                placeholder: "Type",
                                value: $typeValue,
                                state: $typeState,
                                helperText: $typeHelperText,
                                leftIcon: "pie-chart",
                                background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                                placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                                textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                                borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                                iconDefaultColor: isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray8)
                            )
                            
                            XelaTextField(
                                placeholder: "Source",
                                value: $sourceValue,
                                state: $sourceState,
                                helperText: $sourceHelperText,
                                leftIcon: "twitter",
                                background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                                placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                                textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                                borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                                iconDefaultColor: isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray8)
                            )
                        }
                    }
                    
                    XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                    
                    XelaAccordion(title: "Data", isOpen: $dataIsOpen, rightIconClose: "add", rightIconOpen: "minus", backgroundOpen: Color.clear, backgroundClose: Color.clear, titleColorClose: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), titleColorOpen: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), dividerColor: Color.clear, iconsSize: 15) {
                        VStack(spacing:16) {
                            XelaCheckbox(label: "Hashtags", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            XelaCheckbox(label: "Tweets", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Quantity, k")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray8))
                                XelaRangeSlider(valueLeft: $valueLeft, valueRight: $valueRight, range: 10...100, secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                                HStack {
                                    Text("10")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                    Spacer()
                                    Text("100")
                                        .xelaSmallBodyBold()
                                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                }
                            }
                        }
                    }
                    
                    XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                    
                    XelaAccordion(title: "Popular Hashtags", isOpen: $popularIsOpen, rightIconClose: "add", rightIconOpen: "minus", backgroundOpen: Color.clear, backgroundClose: Color.clear, titleColorClose: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), titleColorOpen: isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray3), dividerColor: Color.clear, iconsSize: 15) {
                        VStack(spacing:16) {
                            XelaCheckbox(label: "#Figma", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            XelaCheckbox(label: "#Prototyping", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            XelaCheckbox(label: "#UI&UX", selectedColor: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                            Button(action:{}) {
                                HStack {
                                    Text("View more")
                                        .xelaCaption()
                                    Spacer()
                                }
                            }
                            .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
                        }
                    }
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
            }
            
           
            
        }
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
    }
}

