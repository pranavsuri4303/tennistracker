//
//  DatePickedComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct DatePickerComponent: View {
    
    @StateObject var xelaDateManager:XelaDateManager = XelaDateManager(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60*60*24*(-365)),
        maximumDate: Date().addingTimeInterval(60*60*24*365),
        disabledDates: [Date().addingTimeInterval(60*60*24*(-3)), Date().addingTimeInterval(60*60*24*(10)), Date().addingTimeInterval(60*60*24*(-2))],
        selectedDate: Date().addingTimeInterval(60*60*24*3),
        mode: 0,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Orange3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Orange3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 40
    )
    
    @StateObject var xelaDateManager1:XelaDateManager = XelaDateManager(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60*60*24*(-365)),
        maximumDate: Date().addingTimeInterval(60*60*24*365),
        selectedDates: [Date().addingTimeInterval(60*60*24*3), Date().addingTimeInterval(60*60*24*6), Date().addingTimeInterval(60*60*24*8)],
        mode: 3,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Blue3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 40
    )
    
    @StateObject var xelaDateManager2:XelaDateManager = XelaDateManager(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60*60*24*(-365)),
        maximumDate: Date().addingTimeInterval(60*60*24*365),
        mode: 1,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Blue3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 40
    )
    
    @StateObject var xelaDateManager3:XelaDateManager = XelaDateManager(
        calendar: Calendar.current,
        minimumDate: Date().addingTimeInterval(60*60*24*(-365)),
        maximumDate: Date().addingTimeInterval(60*60*24*365),
        mode: 0,
        colors: XelaColorSettings(textColor: Color(xelaColor: .Gray3), todayColor: Color(xelaColor: .Blue3), selectedColor: Color(.white), disabledColor: Color(xelaColor: .Gray9), betweenStartAndEndColor: Color(xelaColor: .Gray3), textBackgroundColor: Color.clear, todayBackgroundColor: Color(.white), selectedBackgroundColor: Color(xelaColor: .Blue3), disabledBackgroundColor: Color.clear, betweenStartAndEndBackgroundColor: Color(xelaColor: .Blue8), weekdayHeaderColor: Color(xelaColor: .Gray7), monthHeaderColor: Color(xelaColor: .Gray2), yearHeaderColor: Color(xelaColor: .Gray9), weekdayHeaderBackgroundColor: Color.clear, monthBackgroundColor: Color.clear, changeMonthButtonBackground: Color(.white), changeMonthButtonForeground: Color(xelaColor: .Gray3), dividerColor: Color(xelaColor: .Gray9)),
        cellWidth: 40
    )
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Date Picker")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.center, spacing:16) {
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Usage Example")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            VStack(alignment:.leading, spacing:24) {
                                VStack(spacing:0) {
                                    XelaDatePicker(xelaDateManager: xelaDateManager, monthOffset: 12)
                                    XelaDivider(style:.Dotted)
                                }
                                HStack {
                                    Text("Date")
                                        .xelaButtonMedium()
                                    Spacer()
                                    if xelaDateManager.selectedDate != nil {
                                        Text(xelaDateManager.selectedDate, style: .date)
                                            .xelaButtonMedium()
                                    }
                                }
                                HStack {
                                    Text("Location")
                                        .xelaButtonMedium()
                                    Spacer()
                                    Text("4140 Parker Rd. Allentown")
                                        .xelaButtonMedium()
                                }
                                XelaButton(text:"Set reminder", leftIcon: "increase", size: .Medium, autoResize: false)
                            }
                            .padding(EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x:0 , y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x:0 , y: 8)
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Select Dates")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaDatePicker(xelaDateManager: xelaDateManager1, monthOffset: 12)
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Select Range Dates")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaDatePicker(xelaDateManager: xelaDateManager2, monthOffset: 12)
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Select Date")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaDatePicker(xelaDateManager: xelaDateManager3, monthOffset: 12)
                            
                            
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


