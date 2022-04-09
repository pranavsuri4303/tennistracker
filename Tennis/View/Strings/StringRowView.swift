//
//  StringRowView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/22.
//

import SwiftUI

struct StringRowView: View {
    let stringRowData: StringModel
    var body: some View {
        HStack{
            VStack(spacing: 5) {
                HStack{
                    Text("\(stringRowData.name)")
                        .fontWeight(.bold)
                    Spacer()
                }
                HStack {
                    VStack {
                        Text("\(stringRowData.mains)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("green"))
                        Text("Mains")
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    VStack {
                        Text("\(stringRowData.cross)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("green"))
                        Text("Cross")
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .padding(8)
        .background(Color(.white).opacity(0.1))
        .cornerRadius(6)
        .padding(.horizontal,8)
        .padding(.vertical, 4)
        
    }
}
