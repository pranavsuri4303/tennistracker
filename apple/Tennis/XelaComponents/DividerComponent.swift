//
//  DividerComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct DividerComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Dividers")
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
                                Text("Horizontal")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            VStack(spacing:36) {
                                XelaDivider(style:.Solid, orientation: .Horizontal, color: Color(xelaColor: .Gray9))
                                XelaDivider(style:.Dashed, orientation: .Horizontal, color: Color(xelaColor: .Gray9))
                                XelaDivider(style:.Dotted, orientation: .Horizontal, color: Color(xelaColor: .Gray9))
                            }
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Vertical")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            HStack(spacing:36) {
                                XelaDivider(style:.Solid, orientation: .Vertical, color: Color(xelaColor: .Gray9))
                                XelaDivider(style:.Dashed, orientation: .Vertical, color: Color(xelaColor: .Gray9))
                                XelaDivider(style:.Dotted, orientation: .Vertical, color: Color(xelaColor: .Gray9))
                            }
                            .frame(height: 100)
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

