//
//  RDEmptyListPlaceholder.swift
//  Tennis
//
//  Created by Pranav Suri on 30/3/22.
//

import SwiftUI

struct RDEmptyListPlaceholder: View {
    var headlineText : String?
    var subHeadlineText : String?
    var body: some View {
        HStack{
            Spacer()
            VStack(alignment: .center, spacing: 20){
                Spacer()
                Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .frame(width: getRect().width*0.4, height: getRect().width*0.4, alignment: .center)
                    .scaledToFit()
                    .foregroundColor(Color("green"))
                VStack(alignment: .center, spacing: 12){
                    if let headlineText = headlineText {
                        Text("\(headlineText)")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    if let subHeadlineText = subHeadlineText {
                        Text("\(subHeadlineText)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .padding(.horizontal,20)
                    }
                }
                Spacer()
            }
            Spacer()
        }

    }
}

struct RDEmptyListPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        RDEmptyListPlaceholder()
    }
}
