//
//  RDHeader.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct RDHeader: View {
    var title: String
    var leftBarButton: RDBadgeButton?
    var rightBarButton: RDBadgeButton?
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Spacer()
                RDHeaderTitle(title: title)
                Spacer()
            }.padding(.horizontal)

            if let leftBarButton = leftBarButton {
                HStack(alignment: .center) {
                    RDBadgeButton(imageTitle: leftBarButton.imageTitle,
                                  systemImageTitle: leftBarButton.systemImageTitle,
                                  action: { leftBarButton.action() })
                    Spacer()
                }.padding(.horizontal)
            }

            if let rightBarButton = rightBarButton {
                HStack(alignment: .center) {
                    Spacer()
                    RDBadgeButton(imageTitle: rightBarButton.imageTitle,
                                  systemImageTitle: rightBarButton.systemImageTitle,
                                  action: { rightBarButton.action() })
                }.padding(.horizontal)
            }
        }
        .background(Color("bg"))
        .padding(.bottom, 8)
    }
}

