//
//  MatchesHistoryView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import SwiftUI

struct MatchesHistoryView: View {
    @State var showAddMatch = false

    var body: some View {
        VStack {

        }
        .frame(width: getRect().width, height: getRect().height)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                RDBadgeButton(systemImageTitle: "plus",
                                              action: { showAddMatch.toggle() })
                    .fullScreenCover(isPresented: $showAddMatch) { AddMatchView(newMatchViewPresented: $showAddMatch) }
            }
        })
    }
}
