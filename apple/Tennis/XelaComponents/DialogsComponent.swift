//
//  DialogsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 12.08.2021.
//

import SwiftUI

struct DialogsComponent: View {
    @State var dialogShow: Bool = false

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text("Dialogs")
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
                                XelaButton(text: "Show dialog", action: {
                                    withAnimation {
                                        dialogShow = true
                                    }
                                })
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
                                Group {
                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), borderLineWidth: 0),
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color(.white).opacity(0), foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: nil,
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), borderLineWidth: 0),
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: nil,
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()
                                }
                                Group {
                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), autoResize: false, borderLineWidth: 0),
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: nil,
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), autoResize: false, borderLineWidth: 0),
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: nil,
                                        closeButton: XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, size: .Medium, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()
                                }
                                Group {
                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), borderLineWidth: 0),
                                        closeButton: nil,
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: nil,
                                        closeButton: nil,
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), borderLineWidth: 0),
                                        closeButton: nil,
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary),
                                        secondaryButton: nil,
                                        closeButton: nil,
                                        buttonsHorizontal: true,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()
                                }
                                Group {
                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), autoResize: false, borderLineWidth: 0),
                                        closeButton: nil,
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "icon-large",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: nil,
                                        closeButton: nil,
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: XelaButton(text: "Action", size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Blue3), autoResize: false, borderLineWidth: 0),
                                        closeButton: nil,
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()

                                    XelaDialog(
                                        icon: "",
                                        title: "Popup title",
                                        description: "Popup description",
                                        primaryButton: XelaButton(text: "Action", size: .Medium, type: .Primary, autoResize: false),
                                        secondaryButton: nil,
                                        closeButton: nil,
                                        buttonsHorizontal: false,
                                        background: Color(.white),
                                        titleColor: Color(xelaColor: .Gray3),
                                        descriptionColor: Color(xelaColor: .Gray3),
                                        iconColor: Color(xelaColor: .Gray10)
                                    )

                                    XelaDivider()
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

            if dialogShow {
                VStack {
                    Spacer()
                    XelaDialog(
                        icon: "moon",
                        title: "Dark mode",
                        description: "Just letting you know that we have dark mode. You Should give a try! Maybe you like it more.",
                        primaryButton: XelaButton(text: "Try Dark mode", action: { print("primary button action") }, size: .Medium, type: .Primary, background: Color(xelaColor: .Yellow3), foregroundColor: Color(xelaColor: .Gray3), autoResize: false),
                        secondaryButton: nil,
                        closeButton:
                        XelaButton(action: { withAnimation { self.dialogShow = false }}, leftIcon: nil, background: Color.clear, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                        buttonsHorizontal: false
                    )
                    .padding()
                    .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                    .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)

                    Spacer()
                }
                .background(Color(.white).opacity(0.8))
                .contentShape(Rectangle())
            }
        }
    }
}
