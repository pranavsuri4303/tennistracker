//
//  Mailbox.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct MailboxTemplate: View {
    var isDark = false
    
    @State var searchText:String = ""
    @State var searchState:XelaTextFieldState = .Default
    @State var searchHelperText:String = ""
    
    @State var showMenu = false
    
    var mails:[Mail] = [
        Mail(id: "1", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "angular", background: Color(xelaColor: .Blue5), foreground: Color(.white)), date: "12:36 PM", title: "As worn in the World Tour", name: "Leif Floyd", caption: "Bummer I had to miss your presentation! I just got a chance...", atachment: false),
        Mail(id: "2", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, icon: "vue", background: Color(xelaColor: .Pink6), foreground: Color(.white)), date: "10:34 AM", title: "Idea hash tags for emails", name: "Krusty Krab", caption: "I danced with Chuck Norris sliding down a hill because I can't co...", atachment: true),
        Mail(id: "3", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-1-1"), background: Color(xelaColor: .Pink6), foreground: Color(.white)), date: "1:40 AM", title: "Products the celebs are wearing", name: "Initech", caption: "We’ll be presenting the 2020 Benefits plans at the All Han...", atachment: false),
        Mail(id: "4", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "SP", background: Color(xelaColor: .Purple10), foreground: Color(xelaColor: .Purple3)), date: "1:26 AM", title: "[WEEKEND ONLY] Get this NOW b...", name: "SP-holding", caption: "@MarvinMcKinney is the best person to ask. Marvin, can you...", atachment: false),
        Mail(id: "5", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, initials: "JT", background: Color(xelaColor: .Red10), foreground: Color(xelaColor: .Red3)), date: "8:36 PM", title: "Lexicon and Bibliography: Meanin...", name: "J-Texon", caption: "Great work facilitating the sync today. I took some notes to keep...", atachment: false),
        Mail(id: "6", avatar: XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-2"), background: Color(xelaColor: .Pink6), foreground: Color(.white)), date: "10:00 AM", title: "Pairs nicely with spreadsheets", name: "David Oshodi", caption: "I rolled around a fireman while listening to Gangnam Style bec...", atachment: false),
    ]
    
    var body: some View {
        VStack(spacing:0) {
            HStack(spacing:16) {
                Button(action:{showMenu.toggle()}) {
                    Image("align-text-justify")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:20, height:20)
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                }
                XelaTextField(
                    placeholder: "Search anything...",
                    value: $searchText,
                    state: $searchState,
                    helperText: $searchHelperText,
                    rightIcon: "search-textfield",
                    background: isDark ? Color(.black) : Color(.white),
                    placeholderColor: isDark ? Color(xelaColor: .Gray6) : Color(xelaColor: .Gray8),
                    textfieldColor: isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray),
                    borderDefaultColor: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11),
                    iconDefaultColor: isDark ? Color(xelaColor: .Gray11) : nil
                )
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(isDark ? .black : .white))
            ZStack {
                VStack(spacing:0) {
                    HStack {
                        Text("Inbox")
                            .xelaHeadline()
                            .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        Spacer()
                        Text("1573 messages, 2 unread")
                            .xelaCaption()
                            .foregroundColor(Color(xelaColor: .Gray6))
                    }
                    .padding(.horizontal, 16)
                    
                    ScrollView {
                        VStack(spacing:0) {
                            ForEach(mails) { mail in
                                
                                mailView(mail: mail)
                                    .padding(.top, mail.id == mails.first?.id ? 24 : 0)
                                    .padding(.bottom, mail.id == mails.last?.id ? 24 : 0)
                            }
                        }
                    }
                }
                
                
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        XelaButton(leftIcon:"add", size: .Medium, type: .Primary, background: Color(xelaColor: .Blue5), foregroundColor: Color(.white))
                            .padding(.trailing, 16)
                            .padding(.bottom, 16)
                    }
                }
            }
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .background(isDark ? Color(.black) : Color(.white))
        .sheet(isPresented: $showMenu) {
            Sidebar2Block(isDark: isDark)
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    @ViewBuilder
    func mailView(mail:Mail) -> some View {
        VStack(spacing:16) {
            HStack(alignment:.top, spacing:16) {
                mail.avatar
                VStack(alignment:.leading, spacing:4) {
                    HStack {
                        Text(mail.name)
                            .xelaSmallBody()
                            .foregroundColor(isDark ? Color(xelaColor: .Gray11) : Color(xelaColor: .Gray2))
                        Spacer()
                        HStack(spacing:8) {
                            if mail.atachment {
                                Image("attach")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width:15, height: 15)
                                    .foregroundColor(Color(xelaColor: .Gray8))
                            }
                                
                            Text(mail.date)
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                        }
                    }
                    Text(mail.title)
                        .xelaSmallBody()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                        .lineLimit(1)
                    Text(mail.caption)
                        .xelaSmallBody()
                        .foregroundColor(Color(xelaColor: .Gray6))
                        .lineLimit(2)
                }
            }
            .padding(.top, 16)
            .padding(.horizontal, 32)
            XelaDivider(style:.Solid, color: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Gray11))
                .padding(.horizontal, 16)
        }
        
    }
}

struct Mail: Identifiable {
    var id: String
    var avatar:XelaUserAvatar
    var date:String
    var title:String
    var name:String
    var caption:String
    var atachment:Bool
}
