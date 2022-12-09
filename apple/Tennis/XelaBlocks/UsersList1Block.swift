//
//  UsersList1Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 15.08.2021.
//

import SwiftUI

struct UsersList1Block: View {
    var isDark = false
    
    var favorites:[FavoriteAvatar] = [
        FavoriteAvatar(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-1-1")), label: "Leslie"),
        FavoriteAvatar(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-2"), decoration: .Indicator, decorationPosition: .BottomRight), label: "Kristin"),
        FavoriteAvatar(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-3")), label: "Gladys"),
        FavoriteAvatar(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-4"), count: 21, decoration: .Counter, decorationPosition: .BottomRight), label: "Darlene"),
        FavoriteAvatar(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-5")), label: "Darrell"),
        FavoriteAvatar(id: 6, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-6")), label: "Arthur"),
        FavoriteAvatar(id: 7, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-7")), label: "Charlotte"),
        FavoriteAvatar(id: 8, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-8")), label: "Phyllis")
    ]
    
    var contacts:[ContactItem] = [
        ContactItem(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-7"), decoration: .Indicator, decorationPosition: .BottomRight), name: "Charolette Hanlin", lastMessage: "How are you?", date: "08:00", count: 0),
        ContactItem(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-8")), name: "Phyllis Godley", lastMessage: "I'll be there in 2 mins", date: "5/27/15", count: 0),
        ContactItem(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "BL", decoration: .Indicator, decorationPosition: .BottomRight, background: Color(xelaColor: .Blue10), foreground: Color(xelaColor: .Blue3)), name: "Brittni Lando", lastMessage: "just ideas for next time", date: "07:12", count: 3),
        ContactItem(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-10")), name: "Maryland Winkles", lastMessage: "perfect!", date: "00:05", count: 0),
        ContactItem(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-11")), name: "Leatrice Handler", lastMessage: "Haha that's terrifying 😂", date: "12:34", count: 0),
        ContactItem(id: 6, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-2")), name: "Kristin Mondaly", lastMessage: "Okay!", date: "10:14", count: 0),
        ContactItem(id: 7, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-3")), name: "Gladys Watson", lastMessage: "What?!", date: "17:14", count: 0)
    ]
    
    var body: some View {
        VStack {
            ZStack {
                VStack(spacing:16) {
                    HStack {
                        Text("Chats")
                            .xelaHeadline()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Spacer()
                        ZStack {
                            Image("bell-1")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width:20, height: 20)
                                .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                            VStack {
                                HStack {
                                    Spacer()
                                    Circle()
                                        .fill(Color(xelaColor: .Orange3))
                                        .frame(width: 6, height:6)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                }
                                Spacer()
                            }
                        }
                        .frame(width:20, height: 20)
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 24)
                    
                    HStack {
                        Text("Favorites")
                            .xelaSmallBodyBold()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                            
                        Spacer()
                    }
                    .padding(.top, 6)
                    .padding(.horizontal, 24)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(favorites) { favorite in
                                Button(action: {}) {
                                    favoriteView(favorite: favorite)
                                        .padding(.leading, favorite.id == favorites.first?.id ? 24 : 0)
                                        .padding(.trailing, favorite.id == favorites.last?.id ? 24 : 0)
                                }
                                
                            }
                        }
                    }
                    
                    HStack {
                        Text("Contacts")
                            .xelaSmallBodyBold()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Spacer()
                    }
                    .padding(.horizontal, 24)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing:16) {
                            ForEach(contacts) { contact in
                                Button(action:{}) {
                                    contactView(contact: contact)
                                }
                                
                            }
                        }
                        .padding(.horizontal, 24)
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        XelaButton(leftIcon: "add", size: .Medium, background: Color(xelaColor: isDark ? .Blue5 : .Blue3), foregroundColor: Color(.white))
                            .padding(.trailing, 24)
                            .padding(.bottom, 48)
                    }
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
    
    @ViewBuilder
    func favoriteView(favorite:FavoriteAvatar) -> some View {
        VStack(spacing:4) {
            favorite.avatar
            Text(favorite.label)
                .xelaCaption()
                .foregroundColor(Color(xelaColor: .Gray8))
        }
    }
    
    @ViewBuilder
    func contactView(contact:ContactItem) -> some View {
        HStack(spacing:12) {
            contact.avatar
            VStack(alignment:.leading, spacing:0) {
                Text(contact.name)
                    .xelaButtonMedium()
                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                Text(contact.lastMessage)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
            Spacer()
            VStack(alignment:.trailing, spacing:0) {
                if contact.count > 0 {
                    Text("\(contact.count)")
                        .xelaCaption()
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                        .background(Circle().fill(Color(xelaColor: .Red3)))
                }
                Spacer()
                Text(contact.date)
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray8))
            }
        }
    }
}





struct ContactItem: Identifiable {
    var id: Int
    var avatar:XelaUserAvatar
    var name:String
    var lastMessage:String
    var date:String
    var count:Int
}

struct FavoriteAvatar: Identifiable {
    var id: Int
    var avatar:XelaUserAvatar
    var label:String
    
}

