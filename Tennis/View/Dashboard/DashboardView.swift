//
//  DashboardView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/1/21.
//

import SwiftUI

struct DashboardView: View {
    @State var showAddMatch = false
    
    var body: some View {
        VStack() {
            
        }
        .frame(width: getRect().width, height: getRect().height)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                RDBadgeButton(systemImageTitle: "plus",
                              action: { showAddMatch.toggle() })
                    .sheet(isPresented: $showAddMatch) { NewMatchView() }
            }
        })
    }
}
