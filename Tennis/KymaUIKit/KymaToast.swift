//
//  KymaToast.swift
//  
//
//  Created by Pranav Suri on 07.08.2021.
//

import SwiftUI

struct KymaToast: View {
    
    var title:String
    var description:String = ""
    var icon:String? = nil
    var avatar:KymaUserAvatar? = nil
    var rightButton:KymaButton? = nil
    var firstActionText:String = ""
    var firstAction:(()->Void)? = nil
    var secondActionText:String = ""
    var secondAction:(()->Void)? = nil
    
    var autoresize:Bool = false
    
    var background:Color = Color(.white)
    var firstActionColor:Color = Color(KymaColor: .Blue3)
    var secondActionColor:Color = Color(KymaColor: .Blue3)
    var titleColor:Color = Color(KymaColor: .Gray2)
    var descriptionColor:Color = Color(KymaColor: .Gray6)
    var iconColor:Color = Color(KymaColor: .Blue3)
    
    var body: some View {
        HStack(spacing:16) {
            if avatar != nil {
                VStack {
                    if avatar != nil {
                        avatar!
                    }
                }
            }
            HStack(alignment: description.isEmpty ? .center : .top, spacing: 16) {
                if icon != nil {
                    Image(icon!)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(iconColor)
                        .frame(width:24, height:24)
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(title)
                        .KymaBodyBold()
                        .foregroundColor(titleColor)
                    if !description.isEmpty {
                        Text(description)
                            .KymaCaption()
                            .foregroundColor(descriptionColor)
                    }
                    
                    if !firstActionText.isEmpty && !secondActionText.isEmpty {
                        HStack(spacing:18) {
                            Button(action:{
                                if firstAction != nil {
                                    firstAction!()
                                }
                            }) {
                                
                                Text(firstActionText)
                                    .KymaButtonMedium()
                            }
                            .foregroundColor(firstActionColor)
                            
                            Button(action:{
                                if secondAction != nil {
                                    secondAction!()
                                }
                            }) {
                                
                                Text(secondActionText)
                                    .KymaButtonMedium()
                            }
                            .foregroundColor(secondActionColor)
                        }
                        .padding(.top, 8)
                    }
                }
            }
            
            if !autoresize {
                Spacer()
            }
            
            if (!secondActionText.isEmpty && firstActionText.isEmpty) || (!firstActionText.isEmpty && secondActionText.isEmpty) {
                if firstActionText.isEmpty {
                    Button(action:{
                        if secondAction != nil {
                            secondAction!()
                        }
                    }) {
                        
                        Text(secondActionText)
                            .KymaButtonMedium()
                    }
                    .foregroundColor(secondActionColor)
                }
                else {
                    Button(action:{
                        if firstAction != nil {
                            firstAction!()
                        }
                    }) {
                        
                        Text(firstActionText)
                            .KymaButtonMedium()
                    }
                    .foregroundColor(firstActionColor)
                }
            }
            
            if rightButton != nil {
                rightButton!
                    
            }
            
            
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(background)
        .cornerRadius(18)
        
    }
}

