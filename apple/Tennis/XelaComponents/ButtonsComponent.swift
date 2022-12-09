//
//  Buttons.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct ButtonsComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Buttons")
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
                            HStack {
                                XelaButton(text:"Bookmark", leftIcon: "bookmark", size: .Medium, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                                XelaButton(text:"Grid", leftIcon: "grid-layout", size: .Medium, background: Color(xelaColor: .Pink3), foregroundColor: Color(.white))
                                XelaButton(leftIcon: "list-layout", size: .Medium, background: Color(xelaColor: .Gray3), foregroundColor: Color(.white))
                            }
                            HStack {
                                XelaButton(text:"Delete item", leftIcon: "bin", size: .Medium, background: Color(xelaColor: .Red3), foregroundColor: Color(.white))
                                XelaButton(text:"Download file", rightIcon: "download", size: .Medium, background: Color(xelaColor: .Green2), foregroundColor: Color(.white))
                            }
                            
                            HStack {
                                XelaButton(text:"Next", rightIcon: "arrow-right", size: .Medium, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Purple3))
                                
                                XelaButton(text:"More", leftIcon: "more-horizontal", size: .Medium, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                            }
                        }
                        
                        createButtonPrimaryLarge()
                        createButtonSecondaryLarge()
                        createButtonPrimaryMedium()
                        createButtonSecondaryMedium()
                        createButtonPrimarySmall()
                        createButtonSecondarySmall()
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(xelaColor: .Gray12))
    }
    
    @ViewBuilder
    func createButtonSecondarySmall() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Secondary Size: Small")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(leftIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3), autoResize: false)
            
        }
        
    }
    
    @ViewBuilder
    func createButtonPrimarySmall() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Primary Size: Small")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(leftIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Small, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: false)
            
        }
        
    }
    
    @ViewBuilder
    func createButtonSecondaryMedium() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Secondary Size: Medium")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(leftIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3), autoResize: false)
            
        }
        
    }
    
    @ViewBuilder
    func createButtonPrimaryMedium() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Primary Size: Medium")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(leftIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Medium, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: false)
            
        }
        
    }
    
    @ViewBuilder
    func createButtonSecondaryLarge() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Secondary Size: Large")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
                XelaButton(leftIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Secondary, background: Color(xelaColor: .Gray11), foregroundColor: Color(xelaColor: .Blue3), autoResize: false)
            
        }
        
    }
    
    @ViewBuilder
    func createButtonPrimaryLarge() -> some View {
        VStack(spacing:14) {
            HStack {
                Spacer()
                Text("Type: Primary Size: Large")
                    .xelaCaption()
                    .foregroundColor(Color(xelaColor: .Gray4))
                Spacer()
            }
            
            XelaDivider(color:Color(xelaColor: .Gray11))
        }
        .padding(.vertical, 8)
        
        Group {
            HStack {
                XelaButton(text: "Button", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button", leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            HStack {
                XelaButton(text: "Button",  leftIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(text: "Button",  rightIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                
            }
            HStack {
                XelaButton(leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
                XelaButton(leftIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white))
            }
            
            XelaButton(text: "Autoresize Off", leftIcon: "icon", rightIcon: "icon", size: .Large, state: .Default, type: .Primary, background: Color(xelaColor: .Blue3), foregroundColor: Color(.white), autoResize: false)
            
        }
        
    }
}

