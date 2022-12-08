//
//  KymaAccordion.swift
//  
//
//  Created by Pranav Suri on 07.08.2021.
//

import SwiftUI

struct KymaAccordion<Content: View>: View {
    
    var title:String
    @Binding var isOpen:Bool
    let content: Content
    
    var leftIconClose:String = ""
    var leftIconOpen:String = ""
    var rightIconClose:String = ""
    var rightIconOpen:String = ""
    
    var systemIconOpen:String = "minus.circle.fill"
    var systemIconClose:String = "plus.circle.fill"
    
    var backgroundOpen:Color = Color(KymaColor: .Gray12)
    var backgroundClose:Color = Color(KymaColor: .Gray12)
    
    var titleColorClose:Color = Color(KymaColor: .Gray2)
    var titleColorOpen:Color = Color(KymaColor: .Gray2)
    
    var dividerColor:Color = Color(KymaColor: .Gray11)
    
    var iconsSize:CGFloat = 24
    
    
    
    
    
    init(title:String, isOpen:Binding<Bool>, leftIconClose:String = "", leftIconOpen:String = "", rightIconClose:String = "", rightIconOpen:String = "", systemIconOpen:String = "minus.circle.fill", systemIconClose:String = "plus.circle.fill", backgroundOpen:Color = Color(KymaColor: .Gray12), backgroundClose:Color = Color(KymaColor: .Gray12), titleColorClose:Color = Color(KymaColor: .Gray2), titleColorOpen:Color = Color(KymaColor: .Gray2), dividerColor:Color = Color(KymaColor: .Gray11), iconsSize:CGFloat = 24, @ViewBuilder content: @escaping () -> Content) {
        self.content = content()
        self.title = title
        self.leftIconOpen = leftIconOpen
        self.leftIconClose = leftIconClose
        self.rightIconOpen = rightIconOpen
        self.rightIconClose = rightIconClose
        self.systemIconOpen = systemIconOpen
        self.systemIconClose = systemIconClose
        self.backgroundOpen = backgroundOpen
        self.backgroundClose = backgroundClose
        self.titleColorOpen = titleColorOpen
        self.titleColorClose = titleColorClose
        self.dividerColor = dividerColor
        self.iconsSize = iconsSize
        self._isOpen = isOpen
    }
    
    var body: some View {
        VStack(spacing:16) {
            HStack {
                if leftIconClose.isEmpty && leftIconOpen.isEmpty && rightIconClose.isEmpty && rightIconOpen.isEmpty {
                    Image(systemName: isOpen ? systemIconOpen : systemIconClose)
                        .font(.system(size: iconsSize))
                        .foregroundColor(isOpen ? titleColorOpen : titleColorClose)
                }
                
                if !leftIconOpen.isEmpty && !leftIconClose.isEmpty {
                    Image(isOpen ? leftIconOpen : leftIconClose)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:iconsSize, height: iconsSize)
                        .foregroundColor(isOpen ? titleColorOpen : titleColorClose)
                }
                
                
                Text(title)
                    .KymaBodyBold()
                    .foregroundColor(isOpen ? titleColorOpen : titleColorClose)
                
                Spacer()
                
                if !rightIconOpen.isEmpty && !rightIconClose.isEmpty {
                    Image(isOpen ? rightIconOpen : rightIconClose)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:iconsSize, height: iconsSize)
                        .foregroundColor(isOpen ? titleColorOpen : titleColorClose)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation {
                    isOpen.toggle()
                }
            }
            
            if isOpen {
                if dividerColor != Color.clear {
                    KymaDivider(style:.Dotted, color: dividerColor)
                }
                content
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(isOpen ? backgroundOpen : backgroundClose)
        .cornerRadius(12)
    }
}
