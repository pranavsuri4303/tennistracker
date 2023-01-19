//
//  NewAddMatchView.swift
//  Tennis
//
//  Created by Pranav Suri on 18/1/23.
//

import SwiftUI

struct NewAddMatchView: View {
    @Binding var showingAddMatch: Bool
    var body: some View {
        VStack {
            Text("Match Format")
                .xelaHeadline()
            
            Menu("Best of ") {
                Button {
                    print("Button pressed")
                } label: {
                    Text("Test")
                    Image("Profile")
                }
            }
        }
        .padding(.horizontal, 24)
    }
}
