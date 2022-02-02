//
//  RDHeader.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct RDHeader: View {
    @Binding var showMenu: Bool
    var title: String
    var rightBarButton: RDBadgeButton?
    var body: some View {
        ZStack{
            HStack{
                Spacer()
                RDHeaderTitle(title: title)
                Spacer()
            }.padding(.horizontal)
            
            HStack{
                RDBadgeButton(imageTitle: "Menu",
                              action:{ showMenu.toggle()})
                Spacer()
            }.padding(.horizontal)
            
            if let rightBarButton = rightBarButton{
                HStack{
                    Spacer()
                    RDBadgeButton(imageTitle: rightBarButton.imageTitle,
                                  systemImageTitle: rightBarButton.systemImageTitle,
                                  action: {rightBarButton.action()} )
                }.padding(.horizontal)
            }
        }
        .background(Color("bg"))
        .padding(.bottom, 8)
    }
    
}
