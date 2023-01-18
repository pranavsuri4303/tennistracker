//
//  NewLoginView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/1/23.
//

import SwiftUI

struct LoginView: View {
    @State var showingResetPassword = false
    @State var showingRegister = false

    @StateObject var vm = LoginVM()
    @State var revealPassword = false
    @Binding var additionalInfoRequired: Bool

    var body: some View {
        ZStack {
            VStack(spacing: 18) {
                Image("homeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack {
                    Text("Sign In")
                        .xelaHeadline()
                    Spacer()
                }
                VStack(spacing: 12) {
                    XelaTextField(placeholder: "Email", value: $vm.email, state: .Default, helperText: "", leftIcon:  Icons.envelope.name, disableAutocorrection:true)
                    VStack(spacing: 8) {
                        XelaTextField(placeholder: "Password", value: $vm.password, state: .Default, helperText: "", leftIcon: Icons.password.name, rightIcon: !revealPassword ? Icons.eye.name : Icons.eyeClosed.name, rightIconAction: {
                            revealPassword.toggle()
                        }, disableAutocorrection: true, secureField: !revealPassword)
                        HStack {
                            Spacer()
                            Button {
                                showingResetPassword = true
                                print(showingResetPassword)
                            } label: {
                                Text("Forgot Password?")
                                    .xelaButtonSmall()
                            }
                            .halfSheet(showSheet: $showingResetPassword) {
                                ResetPasswordView()
                            } onEnd: {
                                showingResetPassword = false
                                print(showingResetPassword)
                            }
                        }
                    }
                    XelaButton(text: vm.logInButton.text, action: {
                        vm.verifyUser()
                    }, size: .Large, state: $vm.logInButton.state, type: .Primary, autoResize: false)
                }
                Text("or")
                    .xelaCaption()
                XelaButton(text: vm.googleButton.text, action: {
                    print("sign in with google")
                }, leftIcon: "google", size: .Medium, state: $vm.googleButton.state, type: .Secondary)
                Spacer()
                HStack(spacing: 5) {
                    Text("Don't have an account?")
                        .xelaButtonSmall()
                    Button {
                        withAnimation {
                            showingRegister = true
                        }
                    } label: {
                        Text("Create account.")
                            .xelaButtonSmall()
                    }
                    .fullScreenCover(isPresented: $showingRegister) {
                        RegisterView(registerViewPresented: $showingRegister, additionalInfoRequired: $additionalInfoRequired)
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
            .alert(isPresented: $vm.alert, content: {
                Alert(title: Text("Error"), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
            })

            if vm.isLoading {
                LoadingScreenView()
            }
        }
    }
}

