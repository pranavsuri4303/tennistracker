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
    @Binding var showMenu: Bool
    @Binding var currentTab: CurrentTab


    var body: some View {
        ZStack{
            VStack{
                RDHeader(title: currentTab.rawValue,
                         leftBarButton: RDBadgeButton(systemImageTitle: "line.horizontal.3",
                                                      action: { showMenu.toggle() }),
                         rightBarButton: RDBadgeButton(systemImageTitle: "plus",
                                                       action: { showingAddString.toggle() }))
                    .halfSheet(showSheet: $showingAddString) { AddNewStringView() }
                    onEnd: {
                        print("Add String View Closed")
                    }
                
                List{
                    ForEach(stringsListVM.stringsList, id: \.id) { string  in
                        if #available(iOS 15.0, *) {
                            StringRowView(stringRowData: string)
                                .listRowBackground(Color.black.opacity(0.02))
                                .listRowSeparatorTint(.white)
                        } else {
                            // Fallback on earlier versions
                            StringRowView(stringRowData: string)
                                .listRowBackground(Color.black.opacity(0.02))
                        }
                        
                    }.onDelete(perform: stringsListVM.deleteString(at:))
                    
                }
                .listStyle(.plain)
                Spacer()
                
            }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Menu {
                        ForEach(Sort.allCases, id: \.self) { sortType in
                            Button(sortType.title(), action: {
                                stringsListVM.sortType = sortType
                                stringsListVM.getStringsList()
                            }).foregroundColor(Color("green"))
                        }

                    } label: {
                        Circle()
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image("filter")
                                    .resizable()
                                    .foregroundColor(Color("green")))
                            .padding()

                    }
                }
            }
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(edges: .bottom)
        
    }

}


