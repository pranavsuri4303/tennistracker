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

    @State private var emailTFState: XelaTextFieldState = .Default
    @State private var emailTFHelperText = ""
    @State private var passwordTFState: XelaTextFieldState = .Default
    @State private var passwordTFHelperText = ""
    @State private var buttonState: XelaButtonState = .Default

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

                RDTextField(placeholder: "Email", text: $vm.newUser.emailAddress.toUnwrapped(defaultValue: ""), imageName: "envelope", isSecure: false, isPicker: false)
                    .padding(.horizontal)
                VStack {
                    XelaTextField(placeholder: "Email", value: $vm.newUser.emailAddress.toUnwrapped(defaultValue: ""), state: $emailTFState, helperText: $emailTFHelperText)
                    XelaTextField(placeholder: "Password", value: $vm.password, state: $passwordTFState, helperText: $passwordTFHelperText, secureField: true)
                    XelaButton(text: "Sign In", action: {
                        vm.createAccount { result in
                            switch result {
                            case .success:
                                newUserViewPresented.toggle()
                            case let .failure(error):
                                self.errorMessage = error.localizedDescription
                                self.alertShown = true
                            }
                        }
                    }, size: .Medium, state: $buttonState, autoResize: false)
                }
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
//            .background(Color("bg").ignoresSafeArea(.all, edges: .all))
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
            Button("Ok") {
                alertShown = false
            }
        }
    }
}
