//
//  ToastComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ToastComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Toast")
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
                            XelaToast(title: "Changes saved", rightButton: XelaButton(action: { print("close button") }, size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: .Gray9), removePaddings: true, systemIcon: "xmark"), firstActionText: "Undo", firstAction: { print("first action") }, background: Color(.white), firstActionColor: Color(xelaColor: .Blue3))
                                .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                                .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)

                            XelaToast(
                                title: "1 New message",
                                description: "Brooklyn, 5min ago",
                                icon: nil,
                                avatar: XelaUserAvatar(size: .Medium, style: .Circle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight), rightButton: XelaButton(action: { print("Close Toast") }, size: .Medium, type: .Secondary, foregroundColor: Color(xelaColor: .Gray6), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"), firstActionText: "Reply", firstAction: { print("Action 1") }, secondActionText: "Cancel", secondAction: { print("Action 1") }, autoresize: false, background: Color(.white), firstActionColor: Color(xelaColor: .Blue3), secondActionColor: Color(xelaColor: .Gray6), titleColor: Color(xelaColor: .Gray2), descriptionColor: Color(xelaColor: .Gray6)
                            )
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)

                            XelaToast(title: "New version available", description: "A new Version of software is available for download", icon: "chatbot", avatar: nil, rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(.white), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"), firstActionText: "Update", firstAction: { print("Action 1") }, secondActionText: "Not now", secondAction: { print("Action 2") }, autoresize: false, background: Color(xelaColor: .Gray3), firstActionColor: Color(xelaColor: .Green5), secondActionColor: Color(.white), titleColor: Color(.white), descriptionColor: Color(.white), iconColor: Color(.white))
                                .shadow(color: Color(.black).opacity(0.04), radius: 48, x: 0, y: 4)
                                .shadow(color: Color(.black).opacity(0.04), radius: 12, x: 0, y: 8)
                        }

                        VStack(spacing: 14) {
                            HStack {
                                Spacer()
                                Text("Autoresize Off")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }

                            XelaDivider(color: Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)

                        Group {
                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: "icon",
                                avatar: nil,
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: nil,
                                avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: nil,
                                avatar: nil,
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: "icon",
                                avatar: nil,
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: nil,
                                avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "Toast content",
                                icon: nil,
                                avatar: nil,
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )
                        }

                        Group {
                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: "icon",
                                avatar: nil,
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: nil,
                                avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: nil,
                                avatar: nil,
                                rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "Action",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: "icon",
                                avatar: nil,
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: nil,
                                avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )

                            XelaToast(
                                title: "Toast title",
                                description: "",
                                icon: nil,
                                avatar: nil,
                                rightButton: nil,
                                firstActionText: "Action",
                                firstAction: { print("second action") },
                                secondActionText: "",
                                secondAction: { print("second action") },
                                autoresize: false,
                                background: Color(.white),
                                firstActionColor: Color(xelaColor: .Blue3),
                                secondActionColor: Color(xelaColor: .Blue3),
                                titleColor: Color(xelaColor: .Gray2),
                                descriptionColor: Color(xelaColor: .Gray6),
                                iconColor: Color(xelaColor: .Gray10)
                            )
                        }

                        Group {
                            VStack(spacing: 14) {
                                HStack {
                                    Spacer()
                                    Text("Autoresize On")
                                        .xelaCaption()
                                        .foregroundColor(Color(xelaColor: .Gray4))
                                    Spacer()
                                }

                                XelaDivider(color: Color(xelaColor: .Gray11))
                            }
                            .padding(.vertical, 8)

                            Group {
                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: "icon",
                                    avatar: nil,
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: nil,
                                    avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: nil,
                                    avatar: nil,
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: "icon",
                                    avatar: nil,
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: nil,
                                    avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "Toast content",
                                    icon: nil,
                                    avatar: nil,
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )
                            }

                            Group {
                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: "icon",
                                    avatar: nil,
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: nil,
                                    avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: nil,
                                    avatar: nil,
                                    rightButton: XelaButton(action: { print("Close Toast") }, size: .Small, type: .Secondary, foregroundColor: Color(xelaColor: .Gray2), borderLineWidth: 0, removePaddings: true, systemIcon: "xmark"),
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "Action",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: "icon",
                                    avatar: nil,
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: nil,
                                    avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Blue3), foreground: Color(.white)),
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )

                                XelaToast(
                                    title: "Toast title",
                                    description: "",
                                    icon: nil,
                                    avatar: nil,
                                    rightButton: nil,
                                    firstActionText: "Action",
                                    firstAction: { print("second action") },
                                    secondActionText: "",
                                    secondAction: { print("second action") },
                                    autoresize: true,
                                    background: Color(.white),
                                    firstActionColor: Color(xelaColor: .Blue3),
                                    secondActionColor: Color(xelaColor: .Blue3),
                                    titleColor: Color(xelaColor: .Gray2),
                                    descriptionColor: Color(xelaColor: .Gray6),
                                    iconColor: Color(xelaColor: .Gray10)
                                )
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
