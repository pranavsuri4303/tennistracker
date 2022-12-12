//
//  UsersList3Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 15.08.2021.
//

import SwiftUI

struct UsersList3Block: View {
    var isDark = false

    var notifications: [NotificationItem] = [
        NotificationItem(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-1-1")), name: "Leslie", message: "started following you.", date: "2 minutes ago", unread: true),
        NotificationItem(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-2")), name: "Darrella", message: "liked yout photo.", date: "15 minutes ago", unread: true),
        NotificationItem(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-3")), name: "Courtney", message: "started following you.", date: "5 months ago", unread: false),
        NotificationItem(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "wordpress", background: Color(xelaColor: .Blue7), foreground: Color(.white)), name: "Arlene", message: "liked yout photo.", date: "1 months ago", unread: false),
        NotificationItem(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-5")), name: "Darlene", message: "started following you.", date: "1 months ago", unread: false),
        NotificationItem(id: 6, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-6")), name: "Dianne", message: "liked yout photo.", date: "5 hours ago", unread: false),
        NotificationItem(id: 7, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "K", background: Color(xelaColor: .Red9), foreground: Color(xelaColor: .Red3)), name: "Kristine", message: "started following you.", date: "15 days ago", unread: false),
        NotificationItem(id: 8, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-7")), name: "Greg", message: "liked yout photo.", date: "2 week ago", unread: false),
    ]

    var body: some View {
        VStack {
            VStack(spacing: 24) {
                HStack {
                    Button(action: {}) {
                        Image("arrow-left")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    }

                    Spacer()
                    XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .TopRight)
                }
                .padding(.top, 30)
                .padding(.horizontal, 24)

                HStack(spacing: 24) {
                    Text("Notifications")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Text("2")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(xelaColor: .Red3)))
                    Spacer()
                    Button(action: {}) {
                        Text("View all")
                            .xelaButtonSmall()
                    }
                    .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
                }
                .padding(.horizontal, 24)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(notifications) { notification in
                            notificationView(notification: notification)
                                .padding(.bottom, notification.id == notifications.last?.id ? 24 : 0)
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }

    @ViewBuilder
    func notificationView(notification: NotificationItem) -> some View {
        HStack(spacing: 12) {
            notification.avatar
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(notification.name)
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Text(notification.message)
                        .xelaSmallBody()
                        .foregroundColor(Color(xelaColor: .Gray7))
                }
                Text(notification.date)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }

            Spacer()

            if notification.unread {
                Circle()
                    .fill(Color(xelaColor: .Red4))
                    .frame(width: 6, height: 6)
            }
        }
    }
}

struct NotificationItem: Identifiable {
    var id: Int
    var avatar: XelaUserAvatar
    var name: String
    var message: String
    var date: String
    var unread: Bool
}
