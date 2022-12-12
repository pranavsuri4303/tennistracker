//
//  MusicApp3Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 16.08.2021.
//

import SwiftUI

struct MusicApp3Block: View {
    var isDark = false

    var artists: [PopularArtist] = [
        PopularArtist(id: 1, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-1")), label: "Curren$y"),
        PopularArtist(id: 2, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-2")), label: "Eza"),
        PopularArtist(id: 3, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-3")), label: "Ed Sheeran"),
        PopularArtist(id: 4, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-4")), label: "Cardi B"),
        PopularArtist(id: 5, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-5")), label: "Bad Bunny"),
        PopularArtist(id: 6, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-6")), label: "Curren$y"),
        PopularArtist(id: 7, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-7")), label: "Eza"),
        PopularArtist(id: 8, avatar: XelaUserAvatar(size: .Large, style: .Rectangle, image: Image("mapp-8")), label: "Ed Sheeran"),
    ]

    var newReleases: [String] = [
        "amapp-1",
        "amapp-2",
        "amapp-3",
        "amapp-4",
        "amapp-5",
    ]

    var topWeekly: [Top] = [
        Top(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-1")), label: "Baby One More Time", caption: "Hedwig and the Angry Inch", up: true),
        Top(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-2")), label: "It's My Life", caption: "DJay", up: false),
        Top(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-3")), label: "Bad Ideas", caption: "Dorothy Vallens ", up: true),
        Top(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-4")), label: "More Time", caption: "Angry Inch", up: false),
        Top(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("amapp-5")), label: "One More", caption: "Hedwig Inch", up: true),
    ]

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                Text("Browse Music")
                    .xelaHeadline()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Spacer()
                XelaButton(leftIcon: "search-textfield", size: .Medium, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Popular artists")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(artists) { artist in
                                    artistView(artist: artist)
                                        .padding(.leading, artist.id == artists.first?.id ? 24 : 0)
                                        .padding(.trailing, artist.id == artists.last?.id ? 24 : 0)
                                }
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 16) {
                        Text("New Releases")
                            .xelaBodyBold()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            .padding(.horizontal, 24)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(newReleases, id: \.self) { item in
                                    ZStack {
                                        Image(item)
                                            .resizable()
                                            .frame(width: 144, height: 144)
                                            .cornerRadius(24)
                                    }
                                    .padding(.leading, item == newReleases.first ? 24 : 0)
                                    .padding(.trailing, item == newReleases.last ? 24 : 0)
                                }
                            }
                        }
                    }

                    VStack(spacing: 16) {
                        HStack {
                            Text("Top Weekly")
                                .xelaBodyBold()
                                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            Spacer()
                            XelaButton(text: "View all", size: .Medium, background: Color.clear, foregroundColor: isDark ? Color(xelaColor: .Blue6) : Color(xelaColor: .Blue3), removePaddings: true)
                        }

                        ForEach(topWeekly) { top in
                            topView(top: top)
                                .padding(.bottom, top.id == topWeekly.last?.id ? 24 : 0)
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }

    @ViewBuilder
    func topView(top: Top) -> some View {
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

    @ViewBuilder
    func artistView(artist: PopularArtist) -> some View {
        VStack(spacing: 8) {
            artist.avatar
            Text(artist.label)
                .xelaCaption()
                .foregroundColor(Color(xelaColor: .Gray6))
        }
    }
}

struct PopularArtist: Identifiable {
    var id: Int
    var avatar: XelaUserAvatar
    var label: String
}

struct Top: Identifiable {
    var id: Int
    var avatar: XelaUserAvatar
    var label: String
    var caption: String
    var up: Bool
}
