//
//  KymaDate.swift
//  
//
//  Created by Pranav Suri on 06.08.2021.
//

import SwiftUI

struct KymaDate {
    var date:Date
    
    var KymaManager:KymaDateManager
    
    var isDisabled:Bool = false
    var isToday:Bool = false
    var isSelected:Bool = false
    var isBetweenStartAndEnd:Bool = false
    
    func getText() -> String {
        let day = formatDate(date: date, calendar: self.KymaManager.calendar)
        return day
    }
    
    func getTextColor() -> Color {
        var textColor = KymaManager.colors.textColor
        if isDisabled {
            textColor = KymaManager.colors.disabledColor
        } else if isSelected {
            textColor = KymaManager.colors.selectedColor
        } else if isToday {
            textColor = KymaManager.colors.todayColor
        } else if isBetweenStartAndEnd {
            textColor = KymaManager.colors.betweenStartAndEndColor
        }
        return textColor
    }
    
    func getBackgroundColor() -> Color {
        var backgroundColor = KymaManager.colors.textBackgroundColor
        if isBetweenStartAndEnd {
            backgroundColor = KymaManager.colors.betweenStartAndEndBackgroundColor
        }
        if isToday {
            backgroundColor = KymaManager.colors.todayBackgroundColor
        }
        if isDisabled {
            backgroundColor = KymaManager.colors.disabledBackgroundColor
        }
        if isSelected {
            backgroundColor = KymaManager.colors.selectedBackgroundColor
        }
        return backgroundColor
    }
    
    func getChangeMonthBackgroundColor() -> Color {
        return KymaManager.colors.changeMonthButtonBackground
    }
    
    func getChangeMonthForegroundColor() -> Color {
        return KymaManager.colors.changeMonthButtonForeground
    }
    
    func formatDate(date: Date, calendar: Calendar) -> String {
        let formatter = dateFormatter()
        return stringFrom(date: date, formatter: formatter, calendar: calendar)
    }
    
    func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.dateFormat = "d"
        return formatter
    }
    
    func stringFrom(date: Date, formatter: DateFormatter, calendar: Calendar) -> String {
        if formatter.calendar != calendar {
            formatter.calendar = calendar
        }
        return formatter.string(from: date)
    }
    
}
