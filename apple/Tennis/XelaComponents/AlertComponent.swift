//
//  AlertComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct AlertComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Alerts")
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
                            VStack(spacing:24) {
                                XelaAlert(title: "Congratulations!", text: "Your OS has been updated to the latest version. Current OS Version 4.3.17863.289", leftIcon: "shield-tick", rightIcon: "", primaryColor: Color(xelaColor: .Green2), secondaryColor: Color(xelaColor: .Gray7), background: Color(xelaColor: .Green12))
                                    .shadow(color: Color(.black).opacity(0.04), radius: 48, x:0 , y: 4)
                                    .shadow(color: Color(.black).opacity(0.04), radius: 12, x:0 , y: 8)
                                
                                XelaAlert(title: "Warning", text: "Please, never look behind... i said NEVER!", leftIcon: "", rightIcon: "", primaryColor: Color(xelaColor: .Orange3), secondaryColor: Color(xelaColor: .Gray7), background: Color(.white))
                                    .shadow(color: Color(.black).opacity(0.04), radius: 48, x:0 , y: 4)
                                    .shadow(color: Color(.black).opacity(0.04), radius: 12, x:0 , y: 8)
                            }
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Variants")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            VStack(spacing:24) {
                                XelaAlert(title: "Aler title", text: "Alert text", leftIcon: "icon", rightIcon: "icon", primaryColor: Color(xelaColor: .Blue6), secondaryColor: Color(xelaColor: .Gray7), background: Color(.white), rightIconColor: Color(xelaColor: .Gray6))
                                
                                XelaAlert(title: "Aler title", text: "Alert text", leftIcon: "icon", rightIcon: "", primaryColor: Color(xelaColor: .Orange3), secondaryColor: Color(xelaColor: .Gray7), background: Color(.white), rightIconColor: Color(xelaColor: .Gray6))
                                
                                XelaAlert(title: "Aler title", text: "Alert text", leftIcon: "", rightIcon: "", primaryColor: Color(xelaColor: .Green2), secondaryColor: Color(xelaColor: .Gray7), background: Color(.white), rightIconColor: Color(xelaColor: .Gray6))
                                
                                XelaAlert(title: "Aler title", text: "Alert text", leftIcon: "", rightIcon: "icon", primaryColor: Color(xelaColor: .Red3), secondaryColor: Color(xelaColor: .Gray7), background: Color(.white), rightIconColor: Color(xelaColor: .Red3))
                                    
                                
                                
                            }
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

