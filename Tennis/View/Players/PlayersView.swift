//
//  PlayersView.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import SwiftUI
struct PlayersView: View {
    @State var searchString = ""
    @StateObject var vm = PlayersVM()
    var body: some View {
        VStack {
            if searchString == "" {
                HStack {
                    Spacer()
                    VStack(alignment: .center, spacing: 20) {
                        Spacer()
                        Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .foregroundColor(Color("green"))
                            .frame(width: 100, height: 100, alignment: .center)
                        
                        Text("Search for a player...")
                            .font(.headline)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                    Spacer()
                }
                
            } else {
                HStack {
                    ScrollView {
                        LazyVStack {
                            ForEach(vm.hits) { player in
                                PlayerSearchCellView(imageUrl: URL(string: "https://media.wired.com/photos/5b899992404e112d2df1e94e/master/pass/trash2-01.jpg")!,
                                                     hit: player)
                            }
                        }
                        if vm.pages - 1 != vm.pageNo, vm.totalHits != 0 {
                            Button {
                                vm.loadMoreHits(queryString: searchString)
                            } label: {
                                Text("Search more results.")
                            }
                        } else {
                            Text(vm.totalHits == 0 ? "No results found." : "\(vm.totalHits) results.")
                        }
                    }
                }.padding(.horizontal, 8)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $searchString, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search for a player...")
        .onSubmit(of: .search) {
            vm.resetData()
            vm.getHits(queryString: searchString)
        }
        .disableAutocorrection(true)
    }
}
