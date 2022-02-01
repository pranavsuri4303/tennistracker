//
//  StringView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/1/21.
//

import SwiftUI

struct AddNewStringView: View {
    @StateObject var vm = StringsVM()
    @Binding var addStringIsPresented : Bool
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                VStack{
                    Image("welcomeLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //Dynamic Frame...
                        .padding(.all,20)
                        .padding()
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 12, content: {
                            
                            Text("Add new string")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        })
                        
                        Spacer(minLength: 0)
                    }
                    .padding()
                    .padding(.leading,15)
                    
                    RDTextField(title: "String name", text: $vm.stringName, imageName: "number", isSecure: false)
                    
                    HStack(spacing:30){
                        VStack{
                            Text("\(vm.mainsTension)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.all)
                            Stepper("", value: $vm.mainsTension, in: 35...65)
                                .background(Color("green"))
                                .cornerRadius(8)
                                .labelsHidden()
                            Text("Main")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }.padding()
                        .background(Color(.white).opacity(0.1).cornerRadius(8))
                        
                        VStack{
                            Text("\(vm.crossTension)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.all)
                            Stepper("", value: $vm.crossTension, in: 35...65)
                                .background(Color("green"))
                                .cornerRadius(8)
                                .labelsHidden()
                            Text("Cross")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }.padding()
                        .background(Color(.white).opacity(0.1).cornerRadius(8))
                    }.padding(.horizontal)
                    HStack{
                        Text("Restringing date")
                            .font(.headline)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        DatePicker("", selection: $vm.date)
                            .foregroundColor(.white)
                            .labelsHidden()
                            .cornerRadius(8)
                            .accentColor(Color("green"))
                    }.padding(.horizontal)
                    
                    Spacer()
                    Button(action: {
                        vm.addString()
                        addStringIsPresented.toggle()
                    }, label: {
                        RDButton(withTitle: "Add String")
                    }).opacity(vm.stringName != "" ? 1 : 0.5)
                    .disabled(vm.stringName != "" ? false : true)
                    .sheet(isPresented: $vm.showAddString, content: {
                        self
                    })
                    .alert(isPresented: $vm.alert, content: {
                        Alert(title: Text(""), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                        
                    })
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                if vm.isLoading{
                    LoadingScreenView()
                }
            }
            
        }
        
    }
}
