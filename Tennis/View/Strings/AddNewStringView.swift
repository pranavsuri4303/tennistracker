//
//  StringView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/1/21.
//

import SwiftUI

struct AddNewStringView: View {
    @StateObject var vm = AddStringVM()
    var body: some View {
        ZStack {
            GeometryReader { _ in
                VStack {
//                    Image("welcomeLogo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        //Dynamic Frame...
//                        .padding(.all,20)
//                        .padding()
                    HStack {
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Add new string")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        })
                        
                        Spacer(minLength: 0)
                    }.padding()
                    
                    RDTextField(title: "String name", text: $vm.stringName, imageName: "number", isSecure: false)
                    
                    HStack(spacing: 30) {
                        VStack(alignment: .center, spacing: 8) {
                            Text("\(vm.mainsTension)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            Stepper("", value: $vm.mainsTension, in: 35...65)
                                .background(Color("green"))
                                .cornerRadius(8)
                                .labelsHidden()
                                .padding(.horizontal)
                            Text("Main")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                        }.background(Color(.white).opacity(0.1).cornerRadius(8))
                        
                        VStack(alignment: .center, spacing: 8) {
                            Text("\(vm.crossTension)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            Stepper("", value: $vm.crossTension, in: 35...65)
                                .background(Color("green"))
                                .cornerRadius(8)
                                .labelsHidden()
                                .padding(.horizontal)
                            Text("Cross")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                        }.background(Color(.white).opacity(0.1).cornerRadius(8))
                        
                    }.padding(.horizontal)
                    
                    HStack {
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
                    }, label: {
                        RDButton(withTitle: "Add String")
                    }).opacity(vm.stringName != "" ? 1 : 0.5)
                        .disabled(vm.stringName != "" ? false : true)
                        .alert(isPresented: $vm.alert, content: {
                            Alert(title: Text(""), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                        
                        })
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                if vm.isLoading {
                    LoadingScreenView()
                }
            }
        }
    }
}
