//
//  CheckboxComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct CheckboxComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Checkbox")
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
                        Group {
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
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: false)
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))

                            Group {
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Large, indeterminate: true)
                            }
                        }

                        Group {
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
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: false)
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))

                            Group {
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Medium, indeterminate: true)
                            }
                        }

                        Group {
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
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Blue3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: false)
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))

                            Group {
                                XelaCheckbox(label: "Label", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
                                XelaCheckbox(label: "Label", caption: "", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
                                XelaCheckbox(label: "", caption: "caption", value: "value", selectedColor: Color(xelaColor: .Orange3), valueColor: Color(xelaColor: .Red3), size: .Small, indeterminate: true)
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
