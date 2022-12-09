//
//  Typography.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct TypographyComponent: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Typography")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.leading, spacing:24) {
                        
                        Group {
                            Text("Title 1")
                                .xelaTitle1()
                            
                            Text("Title 2")
                                .xelaTitle2()
                            
                            Text("Title 3")
                                .xelaTitle3()
                        }
                        
                        Group {
                            Text("Headline")
                                .xelaHeadline()
                            
                            Text("Subheadline")
                                .xelaSubheadline()
                        }
                        
                        Group {
                            Text("Body")
                                .xelaBody()
                            
                            Text("Body Bold")
                                .xelaBodyBold()
                            
                            Text("Small Body")
                                .xelaSmallBody()
                            
                            Text("Small Body Bold")
                                .xelaSmallBodyBold()
                            
                            Text("Caption")
                                .xelaCaption()
                        }
                            
                        Group {
                            Text("Button Large")
                                .xelaButtonLarge()
                            
                            Text("Button Medium")
                                .xelaButtonMedium()
                            
                            Text("Button Small")
                                .xelaButtonSmall()
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
