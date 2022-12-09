//
//  StepsComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct StepsComponent: View {
    
    @StateObject var steps1:XelaStepsItems = XelaStepsItems(items: [XelaStepItem(id: 1, title: "Title", caption: "Caption"), XelaStepItem(id: 2, title: "Title", caption: "Caption", state: .Completed), XelaStepItem(id: 3, title: "Title", caption: "Caption", state: .Error), XelaStepItem(id: 4, title: "Title", caption: "Caption", state: .Active)])
    
    @StateObject var steps2:XelaStepsItems = XelaStepsItems(items: [XelaStepItem(id: 1, title: "Step 1", caption: "Basic information"), XelaStepItem(id: 2, title: "Step 2", caption: "User managment"), XelaStepItem(id: 3, title: "Step 3", caption: "Fleet settings"), XelaStepItem(id: 4, title: "Step 4", caption: "Confirmation")])
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Steps")
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
                            VStack {
                                Text("Desktop appereance")
                                    .xelaHeadline()
                                Text("Few steps and complete")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray6))
                                
                                XelaDivider(style: .Dotted)
                                    .padding(.top, 24)
                                
                                
                                HStack {
                                    //XelaSteps(steps: steps2, orientation: .Vertical, lines: true)
                                    XelaSteps(steps: steps2, orientation: .Vertical, primaryTextColor: Color(xelaColor: .Gray2), secondaryTextColor: Color(xelaColor: .Gray7), primaryAccentColor: Color(xelaColor: .Green1), secondaryAccentColor: Color(xelaColor: .Green10), secondaryColor: Color(xelaColor: .Gray11), errorColor: Color(xelaColor: .Red3), iconColor: Color(.white), lines: true)
                                    Spacer()
                                }
                                .padding(.top, 24)
                                
                                HStack {
                                    XelaButton(text:"Skip for now", size: .Medium, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Green1))
                                    Spacer()
                                    XelaButton(text:"Continue", action: {
                                        
                                        for i in 0...(steps2.items.count-1) {
                        
                                            if steps2.items[2].state == .Active {
                                                steps2.items[2].state = .Error
                                                break;
                                            }
                        
                                            if steps2.items[i].state == .Active {
                                                withAnimation {
                                                    steps2.items[i].state = .Completed
                        
                                                    if i+1 < steps2.items.count {
                                                        steps2.items[i+1].state = .Active
                                                    }
                                                }
                                                break
                                            }
                                        }
                                    }, rightIcon: "arrow-right", size: .Medium, background: Color(xelaColor: .Green1), foregroundColor: Color(.white))
                                }
                                .padding(.top, 24)
                            
                            }
                            .padding(EdgeInsets(top: 24, leading: 24, bottom: 24, trailing: 24))
                            .background(Color(.white))
                            .cornerRadius(32)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x:0 , y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x:0 , y: 8)
                
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
                                HStack(spacing:36) {
                                    XelaSteps(steps: steps1, orientation: .Vertical, primaryTextColor: Color(xelaColor: .Gray3), secondaryTextColor: Color(xelaColor: .Gray7), primaryAccentColor: Color(xelaColor: .Blue3), secondaryAccentColor: Color(xelaColor: .Blue11), secondaryColor: Color(xelaColor: .Gray11), errorColor: Color(xelaColor: .Red3), iconColor: Color(.white), lines: true)
                                    XelaSteps(steps: steps1, orientation: .Vertical, primaryTextColor: Color(xelaColor: .Gray3), secondaryTextColor: Color(xelaColor: .Gray7), primaryAccentColor: Color(xelaColor: .Blue3), secondaryAccentColor: Color(xelaColor: .Blue11), secondaryColor: Color(xelaColor: .Gray11), errorColor: Color(xelaColor: .Red3), iconColor: Color(.white), lines: false)
                                }
                                
                                VStack(spacing:36) {
                                    XelaSteps(steps: steps1, orientation: .Horizontal, primaryTextColor: Color(xelaColor: .Gray3), secondaryTextColor: Color(xelaColor: .Gray7), primaryAccentColor: Color(xelaColor: .Blue3), secondaryAccentColor: Color(xelaColor: .Blue11), secondaryColor: Color(xelaColor: .Gray11), errorColor: Color(xelaColor: .Red3), iconColor: Color(.white), lines: true)
                                    XelaSteps(steps: steps1, orientation: .Horizontal, primaryTextColor: Color(xelaColor: .Gray3), secondaryTextColor: Color(xelaColor: .Gray7), primaryAccentColor: Color(xelaColor: .Blue3), secondaryAccentColor: Color(xelaColor: .Blue11), secondaryColor: Color(xelaColor: .Gray11), errorColor: Color(xelaColor: .Red3), iconColor: Color(.white), lines: false)
                                }
                                .padding(.top, 24)
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

