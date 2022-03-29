//
//  SwiftUIView.swift
//  Tennis
//
//  Created by Pranav Suri on 28/1/21.
//

import SwiftUI

struct StringsListView: View {
    @ObservedObject var stringsListVM = StringsListVM()
    @State var showingAddString = false
    var body: some View {
        List{
            ForEach(stringsListVM.stringsList, id: \.id) { string  in
                StringRowView(stringRowData: string)
                    .listRowBackground(Color.black.opacity(0.02))
                    .listRowSeparatorTint(.white)
                
            }.onDelete(perform: stringsListVM.deleteString(at:))
        }
        .listStyle(.plain)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                RDBadgeButton(systemImageTitle: "plus",
                              action: { showingAddString.toggle() })
                    .halfSheet(showSheet: $showingAddString) { AddNewStringView() }
            onEnd: { print("Add String View Closed") }
            }
        })
    }
    
}


