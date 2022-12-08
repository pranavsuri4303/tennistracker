//
//  StringView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/1/21.
//

import Firebase
import FirebaseFirestoreSwift
import SwiftUI

struct AddNewStringView: View {
    @StateObject var vm = StringsVM()
    @Binding var showingAddString: Bool
    @State var dateSelected = Date()
    @State private var alertShown = false
    @State private var errorMessage = ""
    var body: some View {
        ZStack {
            GeometryReader { _ in
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Add new string")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        })

                        Spacer(minLength: 0)
                    }.padding()

                    RDTextField(placeholder: "String name", text: $vm.stringEntry.stringName.toUnwrapped(defaultValue: ""), imageName: "number", isSecure: false, isPicker: false)
                        .padding(.horizontal)

                    HStack(spacing: 30) {
                        VStack(alignment: .center, spacing: 8) {
                            Text(String(vm.stringEntry.mainTension ?? 50))
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            Stepper("", value: $vm.stringEntry.mainTension.toUnwrapped(defaultValue: 50), in: 35 ... 65)
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
                            Text(String(vm.stringEntry.crossTension ?? 50))
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            Stepper("", value: $vm.stringEntry.crossTension.toUnwrapped(defaultValue: 50), in: 35 ... 65)
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
                        DatePicker("", selection: $dateSelected, displayedComponents: .date)
                            .foregroundColor(.white)
                            .labelsHidden()
                            .cornerRadius(8)
                            .accentColor(Color("green"))
                    }.padding(.horizontal)

                    Spacer()
                    Button(action: {
                        vm.stringEntry.stringingDate = Timestamp.init(date: dateSelected)
                        vm.addString { res in
                            switch res {
                            case let .failure(err):
                                self.alertShown = true
                                self.errorMessage = err.localizedDescription
                            case .success:
                                self.showingAddString = false
                            }
                        }
                    }, label: {
                        RDButton(withTitle: "Add String")
                    }).opacity(vm.stringEntry.stringName != "" ? 1 : 0.5)
                        .disabled(vm.stringEntry.stringName != "" ? false : true)
                        .alert(isPresented: $vm.alert, content: {
                            Alert(title: Text(""), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                        })
                }
                .alert(errorMessage, isPresented: $alertShown) {
                    Button("Ok") {
                        alertShown = false
                    }
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                if vm.isLoading {
                    LoadingScreenView()
                }
            }
        }
    }
}
