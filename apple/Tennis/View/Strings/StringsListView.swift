//
//  SwiftUIView.swift
//  Tennis
//
//  Created by Pranav Suri on 28/1/21.
//

import SwiftUI

struct StringsListView: View {
    @State var showingAddString = false
    @EnvironmentObject var baseVM: RDBaseViewVM
    @ObservedObject var vm = StringsVM()

    var body: some View {
        HStack {
            if let strings = baseVM.userData?.strings {
                List {
                    ForEach(strings, id: \.self) { string in
                        StringRowView(stringRowData: string)
                            .listRowBackground(Color.clear)
                            .listRowInsets(.init())
                    }
                    .listRowSeparator(.hidden)
                    HStack {
                        Spacer()
                        Text("Swipe left ← to delete string entry.")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    .listRowBackground(Color.clear)
                    .listRowInsets(.init())
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .frame(width: getRect().width)
            } else {
                RDEmptyListPlaceholder(headlineText: "Add a string now!", systemImageName: "plus.circle")
            }
        }
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                Menu {
                    Button("Add Match", action: { print("add match") })
                    Button("Add String", action: { showingAddString.toggle() })
                } label: {
                    Image(systemName: "plus")
                }
            }
        })
        .halfSheet(showSheet: $showingAddString) {
            AddNewStringView(showingAddString: $showingAddString)
        } onEnd: {
            print("ended")
        }
    }
}
