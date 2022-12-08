//
//  KymaWeekdayHeader.swift
//  
//
//  Created by Pranav Suri on 06.08.2021.
//

import SwiftUI

struct KymaWeekdayHeader: View {
    var KymaManager:KymaDateManager
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(self.getWeekdayHeaders(calendar: self.KymaManager.calendar), id: \.self) { weekday in
                Text(weekday)
                    .KymaCaption()
                    .frame(width: KymaManager.cellWidth, height: KymaManager.cellWidth)
                    .foregroundColor(self.KymaManager.colors.weekdayHeaderColor)
            }
        }.background(KymaManager.colors.weekdayHeaderBackgroundColor)
    }
    
    func getWeekdayHeaders(calendar: Calendar) -> [String] {
        
        let formatter = DateFormatter()
        
        var weekdaySymbols = formatter.shortStandaloneWeekdaySymbols
        let weekdaySymbolsCount = weekdaySymbols?.count ?? 0
        
        
        
        for _ in 0 ..< (1 - calendar.firstWeekday + weekdaySymbolsCount){
            let lastObject = weekdaySymbols?.last
            weekdaySymbols?.removeLast()
            weekdaySymbols?.insert(lastObject!, at: 0)
        }
        
        
        return weekdaySymbols ?? []
    }
}


