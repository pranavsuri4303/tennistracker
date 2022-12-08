//
//  KymaBadge.swift
//  
//
//  Created by Pranav Suri on 04.08.2021.
//

import SwiftUI

struct KymaBadge: View {
    @Binding var text:String
    var background:Color = Color(KymaColor: .Blue3)
    var foregroundColor:Color = Color(.white)
    var body: some View {
        Text(text)
            .KymaCaption()
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(foregroundColor)
            .background(background)
            .cornerRadius(10)
    }
}

