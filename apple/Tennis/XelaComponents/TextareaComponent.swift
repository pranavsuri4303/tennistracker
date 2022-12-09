//
//  TextareaComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct TextareaComponent: View {
    
    @State var textarea1Text:String = ""
    @State var textarea1HelperText:String = ""
    @State var textarea1State:XelaTextareaState = .Default
    
    @State var textarea2Text:String = ""
    @State var textarea2HelperText:String = ""
    @State var textarea2State:XelaTextareaState = .Default
    
    @State var textarea3Text:String = ""
    @State var textarea3HelperText:String = "Helper Text"
    @State var textarea3State:XelaTextareaState = .Default
    
    @State var textarea4Text:String = ""
    @State var textarea4HelperText:String = "Helper Text"
    @State var textarea4State:XelaTextareaState = .Default
    
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Textarea")
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
                                Text("Variants")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaTextarea(value: $textarea1Text.onChange({ value in
                                
                                if value.isEmpty {
                                    textarea1State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textarea1State = .Success
                                        }
                                        else {
                                            textarea1State = .Error
                                        }
                                    }
                                    else {
                                        textarea1State = .Focus
                                    }
                                }
                
                            }), helperText: $textarea1HelperText, placeholder: "Placeholder", state: $textarea1State, counter: false)
                            
                            XelaTextarea(value: $textarea2Text.onChange({ value in
                                
                                if value.isEmpty {
                                    textarea2State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textarea2State = .Success
                                        }
                                        else {
                                            textarea2State = .Error
                                        }
                                    }
                                    else {
                                        textarea2State = .Focus
                                    }
                                }
                
                            }), helperText: $textarea2HelperText, placeholder: "Placeholder", state: $textarea2State, counter: true)
                            
                            XelaTextarea(value: $textarea3Text.onChange({ value in
                                
                                if value.isEmpty {
                                    textarea3State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textarea3State = .Success
                                        }
                                        else {
                                            textarea3State = .Error
                                        }
                                    }
                                    else {
                                        textarea3State = .Focus
                                    }
                                }
                
                            }), helperText: $textarea3HelperText, placeholder: "Placeholder", state: $textarea3State, counter: false)
                            
                            
                            XelaTextarea(value: $textarea4Text.onChange({ value in
                                
                                if value.isEmpty {
                                    textarea4State = .Default
                                }
                                else {
                                    if value.count > 2 {
                                        if value == "123" {
                                            textarea4State = .Success
                                        }
                                        else {
                                            textarea4State = .Error
                                        }
                                    }
                                    else {
                                        textarea4State = .Focus
                                    }
                                }
                
                            }), helperText: $textarea4HelperText, placeholder: "Placeholder", state: $textarea4State, counter: true)
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

