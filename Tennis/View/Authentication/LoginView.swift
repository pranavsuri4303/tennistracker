//
//  LoginView.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import LocalAuthentication
import SwiftUI

struct LoginView: View {
    @StateObject var vm = LoginVM()
    // when first time user logged in via email store this for future biometric login....
    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    @AppStorage("status") var logged = false
    
    @State private var goToSignup = false
    
    @State var startAnimate = false
    @State var showingResetPassword = false
    var body: some View {
        ZStack {
//            Color.black.opacity(opacity)
//                .ignoresSafeArea(.all, edges: .all)

            VStack {
                Spacer(minLength: 0)
                
                Image("homeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    // Dynamic Frame...
                    .padding(.horizontal, 35)
                    .padding(.vertical)
                HStack {
                    VStack(alignment: .leading, spacing: 12, content: {
                        Text("Sign In")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Please sign in to continue")
                            .foregroundColor(Color(.white).opacity(0.5))
                    })
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading, 15)
                VStack{
                    RDTextField(placeholder: "Email", text: $vm.email, imageName: "envelope", isSecure: false, isPicker: false)
                    RDTextField(placeholder: "Password", text: $vm.password, imageName: "lock", isSecure: true, isPicker: false)
                }
                .padding(.horizontal)

                RDButton(withTitle: "SIGN IN", performAction: { vm.verifyUser() })
                    .opacity(vm.email != "" && vm.password != "" ? 1 : 0.5)
                    .disabled(vm.email != "" && vm.password != "" ? false : true)
                    .alert(isPresented: $vm.alert, content: {
                        Alert(title: Text("Error"), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                    })
                                
                Button(action: {
                    self.showingResetPassword.toggle()
                }, label: {
                    Text("Forget password?")
                        .foregroundColor(Color("green"))
                }).halfSheet(showSheet: $showingResetPassword) {
                    ResetPasswordView()
                } onEnd: {
                    print("Reset Password Closed")
                }
                
                .padding(.top, 8)
                .alert(isPresented: $vm.store_Info, content: {
                    Alert(title: Text("Message"), message: Text("Store Information For Future Login Using BioMetric Authentication?"), primaryButton: .default(Text("Accept"), action: {
                        // storing Info For BioMetric...
                        Stored_User = vm.email
                        Stored_Password = vm.password
                        withAnimation { self.logged = true }
                    }), secondaryButton: .cancel {
                        // redirecting to Home
                        withAnimation { self.logged = true }
                    })
                })
                Spacer()
                
                HStack(spacing: 5) {
                    Text("Don't have an account? ")
                        .foregroundColor(Color(.white).opacity(0.6))
                    Button("Signup") {
                        goToSignup.toggle()
                    }
                    .foregroundColor(Color("green"))
                    .fullScreenCover(isPresented: $goToSignup) {
                        RegisterView(registerViewPresented: $goToSignup)
                    }
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
    }
}
