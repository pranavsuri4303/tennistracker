//
//  Filter2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 14.08.2021.
//

import SwiftUI

struct Filter2Block: View {
    var isDark = false

    @State var locationValue = "California, USA"
    @State var locationState: XelaTextFieldState = .Default
    @State var locationHelperText = ""

    @State var valueLeft: CGFloat = 30

    @State var valueRight: CGFloat = 70

    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Filters")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Spacer()
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)

            ScrollView {
                VStack(spacing: 16) {
                    XelaTextField(
                        placeholder: "Location",
                        value: $locationValue,
                        state: $locationState,
                        helperText: $locationHelperText,
                        leftIcon: "location",
                        background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                        placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                        textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2),
                        borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                        iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2)
                    )
                    Group {
                        HStack {
                            Text("Job type")
                                .xelaSubheadline()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                            Spacer()
                        }
                        .padding(.top, 8)

                        XelaCheckbox(label: "Full Time Job", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Part Time Job", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Internship Job", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Remote Job", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Contract", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }

                    Group {
                        HStack {
                            Text("Salary")
                                .xelaSubheadline()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                            Spacer()
                        }
                        .padding(.top, 8)

                        XelaRangeSlider(valueLeft: $valueLeft, valueRight: $valueRight, range: 10 ... 100, primaryColor: Color(xelaColor: .Orange3), secondaryColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11))
                    }

                    Group {
                        HStack {
                            Text("Experience level")
                                .xelaSubheadline()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                            Spacer()
                        }
                        .padding(.top, 8)

                        XelaCheckbox(label: "Entry / Junior", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Middle", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                        XelaCheckbox(label: "Senior", selectedColor: isDark ? Color(xelaColor: .Orange3) : Color(xelaColor: .Orange3), defaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11), size: .Medium, state: .Selected, labelColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }

                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
            }
        }
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
    }
}
