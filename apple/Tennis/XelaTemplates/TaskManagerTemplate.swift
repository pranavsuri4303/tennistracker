//
//  TaskManager.swift
//  XelaExampleApp
//
//  Created by Sherhan on 17.08.2021.
//

import SwiftUI

struct TaskManagerTemplate: View {
    var isDark = false
    
    @State var showDetails = false
    
    @State var xelaDateManager:XelaDateManager = XelaDateManager(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60*60*24*(-365)),
        maximumDate: Date().addingTimeInterval(60*60*24*365),
        mode: 0,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Blue3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 45
    )
    
    init(isDark:Bool = false) {
        self.isDark = isDark
        
        if isDark {
            xelaDateManager.colors = XelaColorSettings(textColor: Color(xelaColor: .Gray11), todayColor: Color(xelaColor: .Blue5), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray6), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.black), selectedBackgroundColor: Color(xelaColor: .Blue5), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(.white), yearHeaderColor: Color(xelaColor: .Gray7), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.black), changeMonthButtonForeground: Color(.white), dividerColor: Color(xelaColor: .Gray4))
        }
        
        
    }
    
    var body: some View {
        VStack(spacing:0) {
            HStack(spacing:20) {
                
                Text("Tasks")
                    .xelaButtonLarge()
                    .foregroundColor(Color(.white))
                
                Spacer()
                
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: .Blue5))
            
            HStack(spacing:12) {
                XelaUserAvatar(size: .Medium, style: .Rectangle, image: Image("avatar-3"))
                VStack(alignment:.leading, spacing:0) {
                    Text("Cody Fisher")
                        .xelaSmallBodyBold()
                        .foregroundColor(isDark ? Color(.white) : Color(xelaColor: .Gray2))
                    Text("kenzi.lawson@example.com")
                        .xelaCaption()
                        .foregroundColor(Color(xelaColor: .Gray6))
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(.horizontal, 32)
            .padding(.bottom, 24)
            
            
            XelaDatePicker(xelaDateManager: xelaDateManager, monthOffset: 12)
                
                
                .onAppear() {
                    
                }
            
            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray9))
                .padding(.horizontal, 32)

            
            Spacer()
            
        }
        .background(isDark ? Color(.black) : Color(xelaColor: .Gray12))
        .onReceive(xelaDateManager.$selectedDate) { selectedDate in
            if selectedDate != nil {
                showDetails = true
            }
        }
        .sheet(isPresented: $showDetails) {
            TaskDetailsTemplate(isDark: isDark, currentDate: xelaDateManager.selectedDate)
                .edgesIgnoringSafeArea(.all)
        }
        
    }
    
}

struct TaskDetailsTemplate: View {
    var isDark = false
    var currentDate:Date
    var body: some View {
        VStack(spacing:0) {
            HStack(spacing:20) {
                
                Text(currentDate, style: .date)
                    .xelaButtonLarge()
                    .foregroundColor(Color(.white))
                
                Spacer()
                
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(Color(xelaColor: .Blue5))
            
            
            HStack {
                XelaButton(text:"Search", rightIcon: "search-textfield", size: .Small, type: .Secondary, background: Color.clear, foregroundColor: isDark ? Color(.white) : Color(xelaColor: .Gray2), defaultBorderColor: isDark ? Color(xelaColor: .Gray3) : Color(xelaColor: .Gray11), autoResize: true)
                
                Spacer()
                
                XelaButton(text: "New Task", leftIcon: "add", size: .Small, background: isDark ? Color(xelaColor: .Blue5) : Color(xelaColor: .Blue5), foregroundColor: Color(.white))
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(isDark ? Color(xelaColor: .Gray1) : Color(xelaColor: .Gray12))
            
            ScrollView {
                VStack(spacing:8) {
                    Group {
                        HStack(spacing:16) {
                            Text("01:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        .padding(.top, 16)
                        
                        XelaAlert(title: "Revive Decorative Metal", text: "40 min", primaryColor: Color(xelaColor: isDark ? .Pink6 : .Pink3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Pink12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("02:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Reduce Photovoltaic Collectors", text: "1h 15 min", primaryColor: Color(xelaColor: isDark ? .Blue6 : .Blue3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Blue12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("03:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Deploy Structural Steel Framing", text: "30 min", primaryColor: Color(xelaColor: isDark ? .Green1 : .Green1), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Green12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("04:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Quash Custom Elevator Cabs and Hoistway Doors", text: "1h 30 min", primaryColor: Color(xelaColor: isDark ? .Yellow6 : .Yellow2), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Yellow12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("05:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                    }
                    
                    Group {
                        HStack(spacing:16) {
                            Text("06:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Meeting to discuss the new proposal", text: "5 min", primaryColor: Color(xelaColor: isDark ? .Orange6 : .Orange3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Orange12))
                            .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Add Interior Lighting", text: "1 hour", primaryColor: Color(xelaColor: isDark ? .Orange6 : .Orange3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Orange12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("07:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Deliver Fuses", text: "1h 10 min", primaryColor: Color(xelaColor: isDark ? .Red6 : .Red3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Red12))
                            .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Correct Concrete Forming and Accessories", text: "50 min", primaryColor: Color(xelaColor: isDark ? .Purple6 : .Purple3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Purple12))
                            .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("08:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        HStack(spacing:16) {
                            Text("09:00 PM")
                                .xelaCaption()
                                .foregroundColor(Color(xelaColor: .Gray8))
                            XelaDivider(style:.Dotted, color: isDark ? Color(xelaColor: .Gray4) : Color(xelaColor: .Gray11))
                        }
                        .padding(.horizontal, 16)
                        
                        XelaAlert(title: "Implement Common Work Results for Water and Wastewater Equipment", text: "30 min", primaryColor: Color(xelaColor: isDark ? .Blue6 : .Blue3), background: isDark ? Color(xelaColor: .Gray2) : Color(xelaColor: .Blue12))
                            .padding(.horizontal, 16)
                            .padding(.bottom, 24)
                    }
                    
                }
            }
            
        }
        .background(isDark ? Color(.black) : Color(.white))
    }
}

