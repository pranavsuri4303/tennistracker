//
//  SwiftUIView.swift
//  Tennis
//
//  Created by Pranav Suri on 28/1/21.
//

import SwiftUI

struct StringsListView: View {
    @StateObject var addStringVM = StringsVM()
    @StateObject var stringsListVM = StringsListVM()
    
//  Template Data for View
    @State var name = "String"
    @State var main = 10
    @State var cross = 10
    @State var date = "01/01/01"
    var strings = [0,1,2,3,4,5]

//  **************************
    
    
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    
                    RDHeader(title: "String")
                    HStack{
                        Spacer()
                        RDBadgeButton(systemImageTitle: "plus.circle",
                                      action: { addStringVM.showAddString.toggle() })
                            .sheet(isPresented: $addStringVM.showAddString) {
                                AddNewStringView(addStringIsPresented: $addStringVM.showAddString)}
                    }
                    .padding(.horizontal)
                }.padding(.bottom, 10)
                List{
                    ForEach(strings, id: \.self) { (id)  in
                        StringRowView(stringName: $name, mainsTension: $main, crossTension:   $cross, dateStrung: $date)
                            .listRowBackground(Color.white.opacity(0.08))
                        
                        
// Commented out before connecting to VM
//                        StringsRowView(stringName: id.name, mainsTension: id.mains, crossTension: id.cross, dateStrung: id.date).listRowBackground(Color.white.opacity(0.08))
//  **************************

                        
                    }.onDelete(perform: stringsListVM.deleteString(at: ))
                }.listStyle(.plain)
                
                Spacer()
                
            }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Menu {
                        ForEach(SortStringsby.allCases, id: \.self) { sortType in
                            Button(sortType.rawValue, action: {print("\(sortType.rawValue)")})
                        }

                    } label: {
                        Image("filter")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("green"))
                            .padding()
                    }
                }
            }
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
    }

}


