//
//  RegisterView.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var vm = RegisterVM()
    @Binding var registerViewPresented: Bool
    
    @State var newUserViewPresented = false
    @State private var alertShown = false
    @State private var errorMessage = ""
    
    @State var startAnimate = false
    var body: some View {
        ZStack {
            VStack {
                Spacer(minLength: 0)
                
                Image("signup")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // Dynamic Frame...
                    .padding([.leading, .bottom, .trailing], 35)
                    .padding()
                HStack {
                    VStack(alignment: .leading, spacing: 12, content: {
                        Text("Create Account")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Please sign up to create account")
                            .foregroundColor(Color(.white).opacity(0.5))
                    })
                        .padding(.bottom)
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading, 15)
                
                RDTextField(placeholder: "Email", text: $vm.userData.email, imageName: "envelope", isSecure: false, isPicker: false)
                
                RDTextField(placeholder: "Password", text: $vm.password, imageName: "lock", isSecure: true, isPicker: false)
                
                RDButton(withTitle: "REGISTER", performAction: {
                    vm.createAccount() { result in
                        switch result {
                        case .success:
                            newUserViewPresented.toggle()
                        case .failure(let error):
                            self.errorMessage = error.localizedDescription
                            self.alertShown = true
                        }
                    }
                })
                    .opacity(vm.userData.email != "" && vm.password != "" && (vm.userData.gender != "Male" || vm.userData.gender != "Female") ? 1 : 0.5)
                    .disabled(vm.userData.email != "" && vm.password != "" && (vm.userData.gender != "Male" || vm.userData.gender != "Female") ? false : true)
                    .padding(.top)
                
                Button(action: {}, label: {
                    Image("googleLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40, alignment: .center)
                    
                })
                    .padding(.all)
                
                // SignUp...
                
                HStack(spacing: 5) {
                    Text("Already have an account? ")
                        .foregroundColor(Color(.white).opacity(0.6))
                    
                    Button("Login") {
                        registerViewPresented.toggle()
                    }
                    .foregroundColor(Color("green"))
                }
                
                .padding(.vertical)
            }
            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
            .animation(startAnimate ? .easeOut : .none)
            
            if vm.isLoading {
                LoadingScreenView()
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.startAnimate.toggle()
            }
        })
        .fullScreenCover(isPresented: $newUserViewPresented, content: {
            NewUserView(isPresented: $newUserViewPresented, vm: vm)
        })
        .alert(errorMessage, isPresented: $alertShown) {
            Button("Ok"){
                alertShown = false
            }
        }
    }
}
