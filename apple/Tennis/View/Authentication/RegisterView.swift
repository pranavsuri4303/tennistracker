//
//  RegisterView.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var vm = RegisterVM()
    @Binding var registerViewPresented: Bool
    @State var newUserViewPresented = false
    @State private var alertShown = false
    @State private var errorMessage = ""
    @State private var showPasswordText = false
    var body: some View {
        ZStack {
            VStack(spacing: 18) {
                Image("signup")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack {
                    Text("Sign up")
                        .xelaHeadline()
                    Spacer()
                }
                VStack(spacing: 12) {
                    XelaTextField(placeholder: vm.emailTF.placeholder, value: $vm.newUser.emailAddress.toUnwrapped(defaultValue: ""), state: $vm.emailTF.state, helperText: $vm.emailTF.helperText, leftIcon: Icons.envelope.name, disableAutocorrection: true)
                    XelaTextField(placeholder: vm.passwordTF.placeholder, value: $vm.passwordTF.value, state: $vm.passwordTF.state, helperText: $vm.passwordTF.helperText, leftIcon: Icons.password.name, rightIcon: showPasswordText ? Icons.eyeClosed.name : Icons.eye.name, rightIconAction: {
                        showPasswordText.toggle()
                    }, disableAutocorrection: true, secureField: showPasswordText ? false : true)
                    XelaButton(text: vm.registerButton.text, action: {
                        vm.createAccount { result in
                            switch result {
                            case .success:
                                newUserViewPresented.toggle()
                            case let .failure(error):
                                self.errorMessage = error.localizedDescription
                                self.alertShown = true
                            }
                        }
                    }, size: .Medium, state: $vm.googleSsoButton.state, autoResize: false)
                }
                Text("or")
                    .xelaCaption()
                XelaButton(text: vm.googleSsoButton.text, action: {
                    print("sign in with google")
                }, leftIcon: "google", size: .Medium, state: $vm.googleSsoButton.state, type: .Secondary)
                Spacer()

                HStack(spacing: 5) {
                    Text("Already have an account? ")
                        .xelaButtonSmall()
                    Button {
                        withAnimation {
                            registerViewPresented.toggle()
                        }
                    } label: {
                        Text("Sign in")
                            .xelaButtonSmall()
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
            if vm.isLoading {
                LoadingScreenView()
            }
        }
        .fullScreenCover(isPresented: $newUserViewPresented, content: {
            NewUserView(isPresented: $newUserViewPresented, vm: vm)
        })
        .alert(errorMessage, isPresented: $alertShown) {
            Button("Ok") {
                alertShown = false
            }
        }
    }
}
