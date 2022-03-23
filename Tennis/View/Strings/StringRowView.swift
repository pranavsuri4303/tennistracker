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
        VStack {
            HStack {
                Text("\(stringRowData.name)")
                Spacer()
                Text(stringRowData.date.getDateOnly(fromTimeStamp: stringRowData.date))
            }
            HStack {
                VStack {
                    Text("\(stringRowData.mains)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("green"))
                    Text("Mains")
                }
                Spacer()
                VStack {
                    Text("\(stringRowData.cross)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("green"))
                    Text("Cross")
                }
            }
        }
    }
}
