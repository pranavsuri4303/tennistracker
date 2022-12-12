//
//  MusicService.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct MusicServiceTemplate: View {
    var isDark = false

    @State var searchText: String = ""
    @State var searchState: XelaTextFieldState = .Default
    @State var searchHelperText: String = ""

    var topChart: [TopChart] = [
        TopChart(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-1")), label: "Baby One More Time", caption: "Hedwig and the Angry Inch", up: true),
        TopChart(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-2")), label: "It's My Life", caption: "DJay", up: false),
        TopChart(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-3")), label: "Bad Ideas", caption: "Dorothy Vallens ", up: true),
        TopChart(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-4")), label: "More Time", caption: "Angry Inch", up: false),
        TopChart(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-5")), label: "One More", caption: "Hedwig Inch", up: true),
    ]

    @State var showMenu = false

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {
                    showMenu.toggle()
                }) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                // .padding(.horizontal, 16)

                Spacer()

                XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar"), decoration: .Indicator, decorationPosition: .BottomRight)
                // .padding(.horizontal, 16)
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 8))
            .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))

            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        XelaTextField(
                            placeholder: "Search...",
                            value: $searchText,
                            state: $searchState,
                            helperText: $searchHelperText,
                            leftIcon: "search-textfield",
                            background: isDark ? Color(.black) : Color(.white),
                            placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                            textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                            borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                            iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                        )
                        .padding(.horizontal, 16)
                        .padding(.top, 24)

                        HStack {
                            Text("New Releases")
                                .xelaSubheadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Spacer()
                        }
                        .padding(.horizontal, 16)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                VStack(spacing: 16) {
                                    Image("amapp-1")
                                        .resizable()
                                        .frame(width: 144, height: 144)
                                        .cornerRadius(32)
                                    VStack(spacing: 0) {
                                        Text("It's My Life")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Text("Marlon Craft")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }
                                .padding(.leading, 16)

                                VStack(spacing: 16) {
                                    Image("amapp-2")
                                        .resizable()
                                        .frame(width: 144, height: 144)
                                        .cornerRadius(32)
                                    VStack(spacing: 0) {
                                        Text("Wonderful Tonight")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Text("Felly")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }

                                VStack(spacing: 16) {
                                    Image("amapp-3")
                                        .resizable()
                                        .frame(width: 144, height: 144)
                                        .cornerRadius(32)
                                    VStack(spacing: 0) {
                                        Text("Baby Powder")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Text("Eza")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }

                                VStack(spacing: 16) {
                                    Image("amapp-4")
                                        .resizable()
                                        .frame(width: 144, height: 144)
                                        .cornerRadius(32)
                                    VStack(spacing: 0) {
                                        Text("You & Me")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Text("Tyler the Creator")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }

                                VStack(spacing: 16) {
                                    Image("amapp-5")
                                        .resizable()
                                        .frame(width: 144, height: 144)
                                        .cornerRadius(32)
                                    VStack(spacing: 0) {
                                        Text("Freak In Me")
                                            .xelaSmallBodyBold()
                                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                        Text("Felly")
                                            .xelaCaption()
                                            .foregroundColor(Color(xelaColor: .Gray8))
                                    }
                                }
                                .padding(.trailing, 16)
                            }
                        }

                        HStack {
                            Text("Top Charts")
                                .xelaSubheadline()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                            Spacer()
                        }
                        .padding(.horizontal, 16)

                        ForEach(topChart) { top in
                            topChartView(top: top)
                                .padding(.horizontal, 24)
                                .padding(.bottom, top.id == topChart.last?.id ? 64 + 16 : 0)
                        }
                    }
                    // .padding(16)
                }
                VStack {
                    Spacer()
                    HStack(spacing: 16) {
                        XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("musicapp-2"))
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Find our way")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            Text("Being As An Ocean")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(isDark ? "music-pause-dark" : "music-pause")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        Button(action: {}) {
                            Image("next")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 15, height: 15)
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        }
                        .padding(.trailing, 16)
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .background(isDark ? Color(xelaColor: .Gray2).blur(radius: 40, opaque: true).opacity(0.9) : Color(.white).blur(radius: 40, opaque: true).opacity(0.9))
                    .shadow(color: Color(.black).opacity(0.08), radius: 56, x: 0, y: 4)
                    .shadow(color: Color(.black).opacity(0.08), radius: 16, x: 0, y: 12)
                }
            }
        }
        .background(isDark ? Color(.black) : Color(.white))
        .sheet(isPresented: $showMenu) {
            MusicServiceMenuTemplate(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }

    @ViewBuilder
    func topChartView(top: TopChart) -> some View {
        HStack(spacing: 12) {
            Text("\(top.id)")
                .xelaButtonMedium()
                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray4))
            if top.up {
                Image("trend-up")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
            } else {
                Image("trend-down")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray8))
            }
            top.avatar
            VStack(alignment: .leading, spacing: 4) {
                Text(top.label)
                    .xelaSmallBodyBold()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Text(top.caption)
                    .xelaCaption()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8))
            }
            Spacer()
            XelaButton(leftIcon: "more-horizontal", size: .Small, background: Color.clear, foregroundColor: Color(xelaColor: isDark ? .Gray4 : .Gray6))
        }
    }
}

struct TopChart: Identifiable {
    var id: Int
    var avatar: XelaUserAvatar
    var label: String
    var caption: String
    var up: Bool
}

struct MusicServiceMenuTemplate: View {
    var isDark = false
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 8) {
                XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("avatar"))
                VStack(spacing: 0) {
                    Text("Edwin Martins")
                        .xelaBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("jessica.hanson@example.com")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray8))
                }
            }
            .padding(.top, 32)

            XelaDivider(style: .Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                .padding(.top, 32)
                .padding(.horizontal, 24)

            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    Group {
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("home-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Home")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))

                                Spacer()
                            }
                        }
                        .padding(.top, 32)
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("grid-layout-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Browse")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Albums")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("users-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Artists")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                    }

                    Group {
                        HStack {
                            Text("My Account")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))
                            Spacer()
                        }
                        .padding(.top, 8)
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("alarm-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Recently Played")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("heart-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Favorites")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("star-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Recommended")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("folder-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Local Files")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                    }

                    Group {
                        HStack {
                            Text("Playlists")
                                .xelaSmallBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray8) : Color(xelaColor: .Gray6))

                            Spacer()

                            Button(action: {}) {
                                Image("add")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 13, height: 13)
                                    .padding(4)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            }
                        }
                        .padding(.top, 8)
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("HYPEBEAST")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("West Coast Hip-Hop")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Beat MODE")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Ill Lyricsist")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Good Vibes")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        Button(action: {}) {
                            HStack(spacing: 16) {
                                Image("audio-document-t")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Text("Rap Caviar")
                                    .xelaSmallBodyBold()
                                    .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                                Spacer()
                            }
                        }
                        .padding(.bottom, 24)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
            }
        }
        .background(isDark ? Color(.black) : Color(.white))
    }
}
