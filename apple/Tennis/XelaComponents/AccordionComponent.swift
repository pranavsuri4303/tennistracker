//
//  AccordionComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct AccordionComponent: View {
    
    @State var accordion1Open:Bool = true
    @State var accordion2Open:Bool = false
    @State var accordion3Open:Bool = false
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Accordion")
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
                                XelaAccordion(title: "Accordion 1", isOpen: $accordion1Open,  rightIconClose: "down-small", rightIconOpen: "up-circle", backgroundOpen: Color(xelaColor: .Yellow12), titleColorOpen: Color(xelaColor: .Blue3), dividerColor: Color(xelaColor: .Blue)) {
                                    Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.")
                                        .xelaSmallBody()
                                }
                                XelaAccordion(title: "Accordion 2", isOpen: $accordion2Open) {
                                    Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.")
                                        .xelaSmallBody()
                                }
                                XelaAccordion(title: "Accordion 3", isOpen: $accordion3Open) {
                                    Text("Placeholder content for this accordion. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.")
                                        .xelaSmallBody()
                                }
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
