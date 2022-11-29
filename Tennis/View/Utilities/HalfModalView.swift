//
//  HalfModalView.swift
//  Tennis
//
//  Created by Pranav Suri on 1/2/22.
//

import SwiftUI

struct HalfModalView: View {
    @State var showSheet: Bool = false

    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Present Sheet")
        }
        .halfSheet(showSheet: $showSheet) {
            // Your Half Sheet View....
            ZStack {
                Color.orange

                VStack {
                    Text("Hello iJustine")
                        .font(.title.bold())
                        .foregroundColor(.white)

                    Button {
                        showSheet.toggle()
                    } label: {
                        Text("Close From Sheet")
                            .foregroundColor(.white)
                    }
                    .padding(10)
                }
            }
            .ignoresSafeArea()
        } onEnd: {
            print("Dismissed")
        }
    }
}
