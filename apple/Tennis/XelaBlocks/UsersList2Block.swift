//
//  UsersList2Block.swift
//  XelaExampleApp
//
//  Created by Sherhan on 15.08.2021.
//

import SwiftUI

struct UsersList2Block: View {
    var isDark = false
    
    @State var searchValue:String = ""
    @State var searchState:XelaTextFieldState = .Default
    @State var searchHelperText:String = ""
    
    @State var toggle1:Bool = false
    
    var calls:[CallItem] = [
        CallItem(id: 1, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-1-1")), name: "Roselle Ehrman", date: "2 mon ago", income: true),
        CallItem(id: 2, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "user-circle", background: Color(xelaColor: .Orange3), foreground: Color(.white)), name: "Johnsie Jock", date: "5 hours ago", income: false),
        CallItem(id: 3, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-2")), name: "Phyllis Godley", date: "1 mon ago", income: false),
        CallItem(id: 4, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "LQ", background: Color(xelaColor: .Green6), foreground: Color(xelaColor: .Green1)), name: "Lauralee Quintero", date: "15 min ago", income: true),
        CallItem(id: 5, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar")), name: "Elanor Pera", date: "2 week ago", income: false),
        CallItem(id: 6, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-5")), name: "Kylee Danford", date: "5 mon ago", income: true),
        CallItem(id: 7, avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-6")), name: "Bellal Emman", date: "1 mon ago", income: false)
    ]
    
    var body: some View {
        VStack {
            VStack(spacing:24) {
                HStack {
                    Text("Calls")
                        .xelaHeadline()
                        .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.horizontal, 24)
                
                XelaTextField(
                    placeholder: "Search for all",
                    value: $searchValue,
                    state: $searchState,
                    helperText: $searchHelperText,
                    leftIcon: "search-textfield",
                    background: isDark ? Color(xelaColor: .Gray2) : Color(.white),
                    placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                    textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                    borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                    iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                )
                .padding(.horizontal, 24)
                
                HStack {
                    Toggle(isOn: $toggle1, label: {
                        HStack(spacing: 16) {
                            VStack {
                                Image("moon-1")
                                    .resizable()
                                    .frame(width:15, height: 15)
                                    .foregroundColor(Color(.white))
                                    .padding(12)
                            }
                            .background(Color(xelaColor: .Blue6))
                            .cornerRadius(12)
                            
                            VStack(alignment:.leading, spacing:0) {
                                Text("Don’t disturb me")
                                    .xelaButtonMedium()
                                    .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                                Text("Snooze all incoming calls")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray6))
                            }
                            
                        }
                    })
                    .toggleStyle(XelaToggleStyle(size: .Medium, onBackgound: Color(xelaColor: .Blue6), offBackground: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11)))
                    .padding(12)
                }
                .background(isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray12))
                .cornerRadius(16)
                .padding(.horizontal, 24)
                
                
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing:16) {
                        ForEach(calls) { call in
                            Button(action:{}) {
                                callView(call: call)
                            }
                            .padding(.bottom, call.id == calls.last?.id ? 24 : 0)
                        }
                    }
                    .padding(.horizontal, 24)
                }
            }
        }
        .background(isDark ? Color(xelaColor: .Gray1) : Color(.white))
    }
    
    @ViewBuilder
    func callView(call:CallItem) -> some View {
        HStack(spacing:16) {
            if call.income {
                Image("top-right")
                    .resizable()
                    .frame(width:15, height:15)
            }
            else {
                Image("top-left")
                    .resizable()
                    .frame(width:15, height:15)
            }
            call.avatar
            Text(call.name)
                .xelaButtonMedium()
                .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
            Spacer()
            Text(call.date)
                .xelaCaption()
                .foregroundColor(Color(xelaColor: .Gray8))
        }
    }
}

struct CallItem: Identifiable {
    var id: Int
    var avatar:XelaUserAvatar
    var name:String
    var date:String
    var income:Bool
}

