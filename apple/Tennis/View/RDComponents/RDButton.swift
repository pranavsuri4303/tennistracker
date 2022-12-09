//
//  RDButton.swift
//  Tennis
//
//  Created by Pranav Suri on 14/1/22.
//

import SwiftUI

struct RDButton: View {
    var withTitle: String
    var performAction: (() -> Void?)?

    var body: some View {
        if let performAction = performAction {
            Button(action: {
                performAction()

            }, label: {
                Text("\(withTitle)")
                    .xelaButtonLarge()
                    .foregroundColor(.black)
                    .padding(.vertical, 10)
                    .frame(width: getRect().width * 0.6)
                    .background(Color("green"))
                    .cornerRadius(15)
            })
        } else {
            Text("\(withTitle)")
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.vertical, 10)
                .frame(width: getRect().width * 0.6)
                .background(Color("green"))
                .cornerRadius(15)
        }
    }
}
