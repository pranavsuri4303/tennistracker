//
//  SegmentedControllComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct SegmentedControllComponent: View {
    
    var items1:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 1, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 2, label: "Label", icon: "icon")
    ]
    var items2:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label"),
        XelaSegmentedControllItem(id: 1, label: "Label"),
        XelaSegmentedControllItem(id: 2, label: "Label")
    ]
    var items3:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, icon: "icon"),
        XelaSegmentedControllItem(id: 1, icon: "icon"),
        XelaSegmentedControllItem(id: 2, icon: "icon")
    ]
    @State var selectedId1:Int = 0
    @State var selectedId2:Int = 0
    @State var selectedId3:Int = 0
    
    var items4:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 1, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 2, label: "Label", icon: "icon")
    ]
    var items5:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label"),
        XelaSegmentedControllItem(id: 1, label: "Label"),
        XelaSegmentedControllItem(id: 2, label: "Label")
    ]
    var items6:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, icon: "icon"),
        XelaSegmentedControllItem(id: 1, icon: "icon"),
        XelaSegmentedControllItem(id: 2, icon: "icon")
    ]
    @State var selectedId4:Int = 0
    @State var selectedId5:Int = 0
    @State var selectedId6:Int = 0
    
    var items7:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 1, label: "Label"),
        XelaSegmentedControllItem(id: 2, icon: "icon")
    ]
    @State var selectedId7:Int = 0
    
    var items8:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Label", icon: "icon"),
        XelaSegmentedControllItem(id: 1, label: "Label"),
        XelaSegmentedControllItem(id: 2, icon: "icon")
    ]
    @State var selectedId8:Int = 0
    
    var items9:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, label: "Day"),
        XelaSegmentedControllItem(id: 1, label: "Week"),
        XelaSegmentedControllItem(id: 2, label: "Month"),
        XelaSegmentedControllItem(id: 3, label: "Year")
    ]
    @State var selectedId9:Int = 0
    
    var items10:[XelaSegmentedControllItem] = [
        XelaSegmentedControllItem(id: 0, icon: "align-left"),
        XelaSegmentedControllItem(id: 1, icon: "align-center-horizontal"),
        XelaSegmentedControllItem(id: 2, icon: "align-right")
    ]
    @State var selectedId10:Int = 0
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Segmented controll")
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
                                Text("Alignment")
                                    .xelaBodyBold()
                                
                                Spacer()
                                
                                XelaSegmentedControll(items: items10, selectedId: $selectedId10, primaryBackground: Color(xelaColor: .Purple3), secondaryBackground: Color(xelaColor: .Gray12), primaryFontColor: Color(.white), autoResize: false)
                                    .frame(width:150)
                                
                            }
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                            .background(Color(.white))
                            .cornerRadius(18)
                            .shadow(color: Color(.black).opacity(0.04), radius: 48, x:0 , y: 4)
                            .shadow(color: Color(.black).opacity(0.04), radius: 12, x:0 , y: 8)
                            
                            
                            
                            XelaSegmentedControll(items: items9, selectedId: $selectedId9, primaryBackground: Color(xelaColor: .Yellow3), secondaryBackground: Color(xelaColor: .Gray12), primaryFontColor: Color(xelaColor: .Gray2), autoResize: false)
                                .padding(.top, 16)
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("AutoReszie Off")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaSegmentedControll(items: items1, selectedId: $selectedId1, autoResize: false)
                            XelaSegmentedControll(items: items2, selectedId: $selectedId2, autoResize: false)
                            XelaSegmentedControll(items: items3, selectedId: $selectedId3, autoResize: false)
                            XelaSegmentedControll(items: items7, selectedId: $selectedId7, autoResize: false)
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("AutoReszie On")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            XelaSegmentedControll(items: items4, selectedId: $selectedId4, autoResize: true)
                            XelaSegmentedControll(items: items5, selectedId: $selectedId5, autoResize: true)
                            XelaSegmentedControll(items: items6, selectedId: $selectedId6, autoResize: true)
                            XelaSegmentedControll(items: items8, selectedId: $selectedId8, autoResize: true)
                        }
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        //.background(Color(xelaColor: .Gray12))
        
    }
}

