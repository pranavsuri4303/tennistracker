//
//  RadioButtonComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct RadioButtonComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Radio Button")
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
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: false,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: true,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Large,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
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
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: false,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: true,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Medium,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
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
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: false,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "Label", caption: "", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "3", label: "Label", caption: "", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "Label", caption: ""),
                                        XelaRadioButtonItem(id: "5", label: "Label", caption: ""),
                                    ],
                                    itemBorder: true,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            Group {
                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: false,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))

                                XelaRadioButtonGroup(
                                    items: [
                                        XelaRadioButtonItem(id: "1", label: "", caption: "Caption", value: "$15/mo", state: .Disabled),
                                        XelaRadioButtonItem(id: "2", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "3", label: "", caption: "Caption", value: "$25/mo"),
                                        XelaRadioButtonItem(id: "4", label: "", caption: "Caption"),
                                        XelaRadioButtonItem(id: "5", label: "", caption: "Caption"),
                                    ],
                                    itemBorder: true,
                                    size: .Small,
                                    selectedItem: nil
                                ) { selected in
                                    print("Selected is: " + selected.caption)
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
