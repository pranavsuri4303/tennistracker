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
    @State var showPasswordText = false

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
                    XelaTextField(placeholder: vm.emailTF.placeholder, value: $vm.emailTF.value, state: $vm.emailTF.state, helperText: $vm.emailTF.helperText, leftIcon: Icons.envelope.name, disableAutocorrection: true)
                    VStack(spacing: 8) {
                        XelaTextField(placeholder: vm.passwordTF.placeholder, value: $vm.passwordTF.value, state: $vm.passwordTF.state, helperText: $vm.passwordTF.helperText, leftIcon: Icons.password.name, rightIcon: showPasswordText ? Icons.eyeClosed.name : Icons.eye.name, rightIconAction: {
                            showPasswordText.toggle()
                        }, disableAutocorrection: true, secureField: showPasswordText ? false : true)
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
                        RegisterView(registerViewPresented: $showingRegister)
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

struct NewLoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
