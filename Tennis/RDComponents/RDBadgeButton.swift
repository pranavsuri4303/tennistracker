//
//  RDBadgeButton.swift
//  Tennis
//
//  Created by Pranav Suri on 20/1/22.
//

import SwiftUI

struct RDBadgeButton: View {
    var imageTitle: String?
    var systemImageTitle: String?
    var action: (() -> Void?)
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            if let imageTitle = imageTitle {
                Image("\(imageTitle)")
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(Color("green"))
            }else{
                Image(systemName: "\(systemImageTitle!)")
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(Color("green"))
            }

        })
        
        
    }
}

