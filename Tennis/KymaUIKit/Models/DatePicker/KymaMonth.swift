//
//  KymaMonth.swift
//  
//
//  Created by Pranav Suri on 07.08.2021.
//

import SwiftUI

struct KymaMonth: View {
    
    //@Binding var isPresented: Bool
    
    @ObservedObject var KymaManager: KymaDateManager
    
    @State var monthOffset: Int
    
    let calendarUnitYMD = Set<Calendar.Component>([.year, .month, .day])
    let daysPerWeek = 7
    var monthsArray: [[Date]] {
        monthArray()
    }
    //let cellWidth = CGFloat(40)
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center, spacing: 0){
            
            HStack {
                Text(getYearHeader())
                    .KymaHeadline()
                    .foregroundColor(self.KymaManager.colors.yearHeaderColor)
                
                Text(getMonthHeader())
                    .KymaHeadline()
                    .foregroundColor(self.KymaManager.colors.monthHeaderColor)
                
                Spacer()
                
                KymaButton(action: {withAnimation {monthOffset -= 1}},size: .Small, type: .Secondary, background: KymaManager.colors.changeMonthButtonBackground, foregroundColor: KymaManager.colors.changeMonthButtonForeground, systemIcon: "chevron.left")
                KymaButton(action: {withAnimation {monthOffset += 1}}, size: .Small, type: .Secondary, background: KymaManager.colors.changeMonthButtonBackground, foregroundColor: KymaManager.colors.changeMonthButtonForeground, systemIcon: "chevron.right")
            }
            .frame(width: KymaManager.cellWidth*CGFloat(daysPerWeek))
            
            
            KymaDivider(style:.Dotted, color: KymaManager.colors.dividerColor)
                .frame(width:KymaManager.cellWidth*CGFloat(daysPerWeek))
                .padding(.vertical, 16)
            
            
            
            
            
            
            
            
            KymaWeekdayHeader(KymaManager: KymaManager)
            
            VStack(alignment: .leading, spacing: 0) {
                ForEach(monthsArray, id:  \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(row, id:  \.self) { column in
                            HStack(spacing:0) {
                                
                                if self.isThisMonth(date: column) {
                                    KymaDatePickerCell(KymaDate: KymaDate(
                                        date: column,
                                        KymaManager: self.KymaManager,
                                        isDisabled: !self.isEnabled(date: column),
                                        isToday: self.isToday(date: column),
                                        isSelected: self.isSpecialDate(date: column),
                                        isBetweenStartAndEnd: self.isBetweenStartAndEnd(date: column)),
                                                       cellWidth: KymaManager.cellWidth)
                                        .onTapGesture { self.dateTapped(date: column) }
                                } else {
                                    //Text("").frame(width: KymaManager.cellWidth, height: KymaManager.cellWidth)
                                    KymaDatePickerCell(KymaDate: KymaDate(
                                        date: column,
                                        KymaManager: self.KymaManager,
                                        isDisabled: true,
                                        isToday: false,
                                        isSelected: false,
                                        isBetweenStartAndEnd: false)
                                    )
                                }
                                
                            }
                        }
                    }
                }
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: KymaManager.cellWidth*7)
            
            
        }.background(KymaManager.colors.monthBackgroundColor)
    }
    
    func isThisMonth(date: Date) -> Bool {
        return self.KymaManager.calendar.isDate(date, equalTo: firstOfMonthForOffset(), toGranularity: .month)
    }
   
   func dateTapped(date: Date) {
       if self.isEnabled(date: date) {
           switch self.KymaManager.mode {
           case 0:
               if self.KymaManager.selectedDate != nil &&
                   self.KymaManager.calendar.isDate(self.KymaManager.selectedDate, inSameDayAs: date) {
                   self.KymaManager.selectedDate = nil
               } else {
                   self.KymaManager.selectedDate = date
               }
               
           case 1:
               self.KymaManager.startDate = date
               self.KymaManager.endDate = nil
               self.KymaManager.mode = 2
           case 2:
               self.KymaManager.endDate = date
               if self.isStartDateAfterEndDate() {
                   self.KymaManager.endDate = nil
                   self.KymaManager.startDate = nil
               }
               self.KymaManager.mode = 1
               //self.isPresented = false
           case 3:
               if self.KymaManager.selectedDatesContains(date: date) {
                   if let ndx = self.KymaManager.selectedDatesFindIndex(date: date) {
                    KymaManager.selectedDates.remove(at: ndx)
                   }
               } else {
                   self.KymaManager.selectedDates.append(date)
               }
           default:
               self.KymaManager.selectedDate = date
               
           }
       }
   }
    
    
    func monthArray() -> [[Date]] {
        var rowArray = [[Date]]()
        for row in 0 ..< (numberOfDays(offset: monthOffset) / 7) {
            var columnArray = [Date]()
            for column in 0 ... 6 {
                let abc = self.getDateAtIndex(index: (row * 7) + column)
                columnArray.append(abc)
            }
            rowArray.append(columnArray)
        }
        return rowArray
    }
    
    func getYearHeader() -> String {
        let headerDateFormatter = DateFormatter()
        headerDateFormatter.calendar = KymaManager.calendar
        headerDateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy", options: 0, locale: KymaManager.calendar.locale)
        
        return headerDateFormatter.string(from: firstOfMonthForOffset())
    }
    
    func getMonthHeader() -> String {
        let headerDateFormatter = DateFormatter()
        headerDateFormatter.calendar = KymaManager.calendar
        headerDateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "LLLL", options: 0, locale: KymaManager.calendar.locale)
        
        return headerDateFormatter.string(from: firstOfMonthForOffset())
    }
    
    func getDateAtIndex(index: Int) -> Date {
        let firstOfMonth = firstOfMonthForOffset()
        let weekday = KymaManager.calendar.component(.weekday, from: firstOfMonth)
        var startOffset = weekday - KymaManager.calendar.firstWeekday
        startOffset += startOffset >= 0 ? 0 : daysPerWeek
        var dateComponents = DateComponents()
        dateComponents.day = index - startOffset
        
        return KymaManager.calendar.date(byAdding: dateComponents, to: firstOfMonth)!
    }
    
    func numberOfDays(offset : Int) -> Int {
        let firstOfMonth = firstOfMonthForOffset()
        let rangeOfWeeks = KymaManager.calendar.range(of: .weekOfMonth, in: .month, for: firstOfMonth)
        
        return (rangeOfWeeks?.count)! * daysPerWeek
    }
    
    func firstOfMonthForOffset() -> Date {
        var offset = DateComponents()
        offset.month = monthOffset
        
        return KymaManager.calendar.date(byAdding: offset, to: KymaFirstDateMonth())!
    }
    
    func KymaFormatDate(date: Date) -> Date {
        let components = KymaManager.calendar.dateComponents(calendarUnitYMD, from: date)
        
        return KymaManager.calendar.date(from: components)!
    }
    
    func KymaFormatAndCompareDate(date: Date, referenceDate: Date) -> Bool {
        let refDate = KymaFormatDate(date: referenceDate)
        let clampedDate = KymaFormatDate(date: date)
        return refDate == clampedDate
    }
    
    func KymaFirstDateMonth() -> Date {
        var components = KymaManager.calendar.dateComponents(calendarUnitYMD, from: KymaManager.minimumDate)
        components.day = 1
        
        return KymaManager.calendar.date(from: components)!
    }
    
    // MARK: - Date Property Checkers
    
    func isToday(date: Date) -> Bool {
        return KymaFormatAndCompareDate(date: date, referenceDate: Date())
    }
     
    func isSpecialDate(date: Date) -> Bool {
        return isSelectedDate(date: date) ||
            isStartDate(date: date) ||
            isEndDate(date: date) ||
            isOneOfSelectedDates(date: date)
    }
    
    func isOneOfSelectedDates(date: Date) -> Bool {
        return self.KymaManager.selectedDatesContains(date: date)
    }

    func isSelectedDate(date: Date) -> Bool {
        if KymaManager.selectedDate == nil {
            return false
        }
        return KymaFormatAndCompareDate(date: date, referenceDate: KymaManager.selectedDate)
    }
    
    func isStartDate(date: Date) -> Bool {
        if KymaManager.startDate == nil {
            return false
        }
        return KymaFormatAndCompareDate(date: date, referenceDate: KymaManager.startDate)
    }
    
    func isEndDate(date: Date) -> Bool {
        if KymaManager.endDate == nil {
            return false
        }
        return KymaFormatAndCompareDate(date: date, referenceDate: KymaManager.endDate)
    }
    
    func isBetweenStartAndEnd(date: Date) -> Bool {
        if KymaManager.startDate == nil {
            return false
        } else if KymaManager.endDate == nil {
            return false
        } else if KymaManager.calendar.compare(date, to: KymaManager.startDate, toGranularity: .day) == .orderedAscending {
            return false
        } else if KymaManager.calendar.compare(date, to: KymaManager.endDate, toGranularity: .day) == .orderedDescending {
            return false
        }
        return true
    }
    
    func isOneOfDisabledDates(date: Date) -> Bool {
        return self.KymaManager.disabledDatesContains(date: date)
    }
    
    func isEnabled(date: Date) -> Bool {
        let clampedDate = KymaFormatDate(date: date)
        if KymaManager.calendar.compare(clampedDate, to: KymaManager.minimumDate, toGranularity: .day) == .orderedAscending || KymaManager.calendar.compare(clampedDate, to: KymaManager.maximumDate, toGranularity: .day) == .orderedDescending {
            return false
        }
        return !isOneOfDisabledDates(date: date)
    }
    
    func isStartDateAfterEndDate() -> Bool {
        if KymaManager.startDate == nil {
            return false
        } else if KymaManager.endDate == nil {
            return false
        } else if KymaManager.calendar.compare(KymaManager.endDate, to: KymaManager.startDate, toGranularity: .day) == .orderedDescending {
            return false
        }
        return true
    }
}

struct KymaLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

