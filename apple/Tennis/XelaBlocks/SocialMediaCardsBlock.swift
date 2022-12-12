//
//  SocialMediaCardsBlock.swift
//  XelaExampleApp
//
//  Created by Sherhan on 16.08.2021.
//

import SwiftUI

struct SocialMediaCardsBlock: View {
    var isDark = false
    @State var badge1 = "New"

    @State var bookmarkActive: Bool = false
    @State var likeActive: Bool = false

    @State var bookmark2Active: Bool = false
    @State var like2Active: Bool = true

    @State var bookmark3Active: Bool = true
    @State var like3Active: Bool = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                HStack {
                    Text("Social Media Cards")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray12) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                .padding(24)

                Group {
                    card1()
                    card2()
                    card3()
                    card4()
                    card5()
                }

                Spacer()
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
    }

    @ViewBuilder
    func card5() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar"))
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 8) {
                        Text("Esther Howard")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }
                }
                Spacer()
                Text("5 min ago")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            .padding(.horizontal, 8)

            ZStack {
                Image("media-image-5-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .cornerRadius(16)
            HStack {
                Text("6-Mile Nissan Skyline R34 V-Spec II Nur Auctioned Off, Is a Real Time Capsule")
                    .xelaButtonMedium()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 8)

            HStack(spacing: 8) {
                Button(action: {}) {
                    Image("01")
                        .resizable()
                        .frame(width: 20, height: 20)
                }

                Button(action: {}) {
                    Image("02")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Button(action: {}) {
                    Image("03")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Button(action: {}) {
                    Image("04")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Button(action: {}) {
                    Image("05")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Button(action: {}) {
                    Image("06")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Spacer()
                Text("2.6k Comments")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray6))
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 8)
        }
        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding()
    }

    @ViewBuilder
    func card4() -> some View {
        VStack(spacing: 12) {
            HStack(spacing: 12) {
                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-4"))
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 8) {
                        Text("Robert Fox")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }
                    Text("@userName")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon: "more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 12)
            .padding(.top, 12)

            ZStack {
                Image("media-image-4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .padding(.top, 8)

            VStack(alignment: .leading, spacing: 12) {
                Text("The RTX 3080 Ti now has a rumoured June 3 release date.")
                    .xelaBodyBold()
                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                Text("Nvidia GeForce RTX 3080 Ti: When will it launch, how much will it cost, and how will it perform?")
                    .xelaSmallBody()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray10) : Color(xelaColor: .Gray4))

                Text("#NVIDIA #RTX3080 #GraphicsCard")
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue3))
            }
            .padding(.horizontal, 12)

            HStack(spacing: 24) {
                HStack(spacing: 8) {
                    Button(action: { like3Active.toggle() }) {
                        if like3Active {
                            Image("heart")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(xelaColor: .Red3))
                        } else {
                            Image("heart-1")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 20, height: 20)
                                .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                        }
                    }

                    Text("1.6k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }

                HStack(spacing: 8) {
                    Button(action: {}) {
                        Image("chat-2")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                    }

                    Text("2.3k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                }

                Spacer()

                Button(action: {
                    bookmark3Active.toggle()
                }) {
                    if bookmark3Active {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3))
                            .frame(width: 20, height: 20)
                    } else {
                        Image("bookmark-2")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray6))
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
        }
        // .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding()
    }

    @ViewBuilder
    func card3() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("media-3"))
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 8) {
                        Text("Darlene Robertson")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Image("badge")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                    Text("Naples, Italy")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon: "more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 8)

            ZStack {
                Image("media-image-3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)

                VStack {
                    Spacer()
                    HStack {
                        XelaButton(leftIcon: "play", size: .Medium, background: Color.clear, foregroundColor: Color(.white))
                        Spacer()
                        Text("2:56")
                            .xelaButtonSmall()
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                            .background(Color(.black).opacity(0.4))
                            .foregroundColor(Color(.white))
                            .cornerRadius(12)
                    }
                    .padding(.bottom, 16)
                    .padding(.horizontal, 16)
                }
            }
            .cornerRadius(16)

            HStack(spacing: 24) {
                Button(action: { like3Active.toggle() }) {
                    if like3Active {
                        Image("heart")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(xelaColor: .Red3))
                    } else {
                        Image("heart")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                    }
                }

                Button(action: {}) {
                    Image("chat-3")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                }

                Button(action: {}) {
                    Image("send-3")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                }

                Spacer()

                Button(action: {
                    bookmark3Active.toggle()
                }) {
                    if bookmark3Active {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .frame(width: 20, height: 20)
                    } else {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .padding(.horizontal, 8)

            HStack(spacing: 0) {
                Text("Liked by Wade Warren and 852 others")
                    .xelaButtonSmall()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                Spacer()

                ZStack {
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-3"))
                        .overlay(
                            Circle()
                                .stroke(isDark ? Color(xelaColor: .Gray2) : Color(.white), lineWidth: 2)
                        )
                        .offset(x: -64 + 28)

                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-2"))
                        .overlay(
                            Circle()
                                .stroke(isDark ? Color(xelaColor: .Gray2) : Color(.white), lineWidth: 2)
                        )
                        .offset(x: -32 + 14)
                    XelaUserAvatar(size: .Small, style: .Circle, image: Image("avatar-1-1"))
                        .overlay(
                            Circle()
                                .stroke(isDark ? Color(xelaColor: .Gray2) : Color(.white), lineWidth: 2)
                        )
                }
            }
            .padding(.horizontal, 8)
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("The Parrot's Surprising Evolutionary Past... (More)")
                        .xelaButtonSmall()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("Nov 22, 2021 15:36")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
            }
            .padding(.horizontal, 8)
        }
        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding()
    }

    @ViewBuilder
    func card2() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                XelaUserAvatar(size: .Medium, style: .Circle, image: Image("media-2"))
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        Text("Dianne Russell")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    }
                    Text("Oslo, Norway")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon: "more-horizontal", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 8)

            ZStack {
                Image("media-image-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)

                // XelaButton(leftIcon: "play", size: .Medium, background: isDark ? Color(.black).opacity(0.4) : Color(.white).opacity(0.4), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .cornerRadius(16)

            HStack(spacing: 24) {
                Button(action: { like2Active.toggle() }) {
                    if like2Active {
                        Image("heart")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(xelaColor: .Red3))
                    } else {
                        Image("heart-2")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                    }
                }

                Button(action: {}) {
                    Image("chat-2")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                }

                Button(action: {}) {
                    Image("send-2")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                }

                Spacer()

                Button(action: {
                    bookmark2Active.toggle()
                }) {
                    if bookmark2Active {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color(xelaColor: .Red7))
                            .frame(width: 20, height: 20)
                    } else {
                        Image("bookmark-2")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray10))
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .padding(.horizontal, 8)

            HStack(spacing: 0) {
                Text("5,486 views ")
                    .xelaButtonSmall()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))

                Spacer()
            }
            .padding(.horizontal, 8)
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("The Parrot's Surprising Evolutionary Past... (More)")
                        .xelaButtonSmall()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("Dec 4, 2021 21:42")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
            }
            .padding(.horizontal, 8)
        }
        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding()
    }

    @ViewBuilder
    func card1() -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("media-1"))
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 8) {
                        Text("r/playstation")
                            .xelaButtonMedium()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        XelaBadge(text: $badge1, background: Color(xelaColor: .Orange3), foregroundColor: Color(.white))
                    }
                    Text("u/shadknight20 • 19 hours ago")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
                Spacer()
                XelaButton(leftIcon: "more-vertical", size: .Small, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            HStack {
                Text("Playstation is partnering with Discord.")
                    .xelaButtonMedium()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Spacer()
            }
            ZStack {
                Image("media-image-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)

                XelaButton(leftIcon: "play", size: .Medium, background: isDark ? Color(.black).opacity(0.4) : Color(.white).opacity(0.4), foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .cornerRadius(16)

            HStack {
                HStack(spacing: 8) {
                    Image("chat-typing")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 15, height: 15)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("114")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                }
                Spacer()
                Button(action: {
                    bookmarkActive.toggle()
                }) {
                    if bookmarkActive {
                        Image("bookmark-1")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color(xelaColor: .Orange3))
                            .frame(width: 15, height: 15)
                    } else {
                        Image("bookmark-2")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            .frame(width: 15, height: 15)
                    }
                }
                Spacer()
                Button(action: {}) {
                    Image("share")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        .frame(width: 15, height: 15)
                }
                Spacer()
                HStack(spacing: 8) {
                    Button(action: { likeActive.toggle() }) {
                        if likeActive {
                            Image("heart")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color(xelaColor: .Orange3))
                        } else {
                            Image("heart-2")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 15, height: 15)
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                    }
                    Text("1.4k")
                        .xelaCaption()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isDark ? Color(xelaColor: .Gray2) : Color(.white))
        .cornerRadius(16)
        .padding()
    }
}
