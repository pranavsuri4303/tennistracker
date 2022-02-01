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
        HStack(spacing: 15){
            if let performAction = performAction {
                Button(action: {
                    performAction()

                }, label: {
                    Text("\(withTitle)")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color("green"))
                        .clipShape(Capsule())
                })
            }else{
                Text("\(withTitle)")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 150)
                    .background(Color("green"))
                    .clipShape(Capsule())
            }
        }
    }
}


