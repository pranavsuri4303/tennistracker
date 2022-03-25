//
//  RDHeaderTitle.swift
//  Tennis
//
//  Created by Pranav Suri on 20/1/22.
//

import SwiftUI

struct RDHeaderTitle: View {
    var title: String
    var body: some View {
        HStack(alignment: .center, spacing: nil, content: {
            Text("\(title)")
                .fontWeight(.heavy)
                .font(.title3)
        }).padding(.horizontal)
        
    }
}


