//
//  KymaDatePickerCell.swift
//  
//
//  Created by Pranav Suri on 06.08.2021.
//

import SwiftUI

struct KymaDatePickerCell: View {
    var KymaDate:KymaDate
    
    var cellWidth:CGFloat = 40
    
    var borderLineWidth:CGFloat = 2
    
    var body: some View {
        if KymaDate.isDisabled {
            Text(KymaDate.getText())
                .KymaSmallBody()
                .foregroundColor(KymaDate.getTextColor())
                .frame(width: KymaDate.KymaManager.cellWidth , height: KymaDate.KymaManager.cellWidth)
                .background(KymaDate.getBackgroundColor())
                .cornerRadius(8)
        }
        else {
            ZStack {
                
                Rectangle()
                    .fill(KymaDate.getBackgroundColor())
                    .frame(width: KymaDate.KymaManager.cellWidth, height: KymaDate.KymaManager.cellWidth-10)
                    .opacity(KymaDate.isBetweenStartAndEnd && !KymaDate.isSelected ? 1 : 0)
                
                Text(KymaDate.getText())
                    .KymaButtonMedium()
                    .foregroundColor(KymaDate.getTextColor())
                    .frame(width: KymaDate.KymaManager.cellWidth, height: KymaDate.KymaManager.cellWidth)
                    .background(KymaDate.isBetweenStartAndEnd && !KymaDate.isSelected ? Color.clear : KymaDate.getBackgroundColor())
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(KymaDate.getTextColor(), lineWidth: borderLineWidth)
                            .opacity(KymaDate.isToday && !KymaDate.isSelected ? 1 : 0)
                    )
                
            }
                
        }
        
    }
}

struct KymaDatePickerCell_Previews: PreviewProvider {
    static var previews: some View {
        KymaDatePickerCell(KymaDate: KymaDate(date: Date(), KymaManager: KymaDateManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0)))
    }
}
