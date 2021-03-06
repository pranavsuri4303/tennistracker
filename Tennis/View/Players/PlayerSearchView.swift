//
//  PlayerSearchView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import SwiftUI
struct PlayerSearchView: View {
    @State var searchString = ""
    @StateObject var vm = PlayersVM()
    @State var showProfile = false
    var body: some View {
        VStack {
            if searchString == "" {
                RDEmptyListPlaceholder(headlineText: "Search for a player.", systemImageName: "magnifyingglass.circle")
            } else {
                HStack {
                    ScrollView {
                        LazyVStack {
                            ForEach(vm.hits) { player in
                                NavigationLink {
                                    Text("Test")
                                        .navigationTitle(Text("\(player.firstName)"))
                                        .navigationBarTitleDisplayMode(.large)
                                } label: {
                                    PlayerSearchCellView(hit: player)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        if vm.pages - 1 != vm.pageNo, vm.totalHits != 0 {
                            Button {
                                DispatchQueue.main.async {
                                    vm.loadMoreHits(queryString: searchString)
                                }
                            } label: {
                                Text("Search more results.")
                            }
                        } else {
                            Text(vm.totalHits == 0 ? "No results found." : "\(vm.totalHits) results.")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }.padding(.horizontal, 8)
            }
        }
        .searchable(text: $searchString, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search for a player...")
        .onSubmit(of: .search) {
            DispatchQueue.main.async {
                vm.resetData()
                vm.getHits(queryString: searchString)
            }
        }
        .disableAutocorrection(true)
    }
}
