//
//  NewLoginView.swift
//  Tennis
//
//  Created by Pranav Suri on 3/1/23.
//

import SwiftUI

struct NewLoginView: View {
    @State var showingResetPassword = false
    @State var showingRegister = false

    @ObservedObject var vm = LoginVM()

    var body: some View {
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
                    XelaTextField(placeholder: vm.passwordTF.placeholder, value: $vm.passwordTF.value, state: $vm.passwordTF.state, helperText: $vm.passwordTF.helperText, leftIcon: Icons.lock.name, rightIcon: Icons.eye.name, disableAutocorrection: true, secureField: true)
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
                    vm.authenticateUser()
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
    }
}

struct NewLoginView_Previews: PreviewProvider {
    static var previews: some View {
        NewLoginView()
    }
}
