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
    @State var textFieldState: XelaTextFieldState = .Default
    @State var buttonState: XelaButtonState = .Disabled
    @State var textFieldDEsc = ""
    @State var buttonGoogleState: XelaButtonState = .Default

    @State private var goToSignup = false

    @State var startAnimate = false
    @State var showingResetPassword = false
    var body: some View {
        VStack {
            Image("homeLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                // Dynamic Frame...
                .padding(.horizontal, 35)
                .padding(.vertical)
            HStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    Text("Sign In")
                        .xelaHeadline()
                })

                Spacer(minLength: 0)
            }
            .padding()
            .padding(.leading, 15)
            VStack(spacing: 10, content: {
                VStack(spacing: 6) {
                    XelaTextField(placeholder: vm.emailTF.placeholder, value: $vm.emailTF.value, state: $vm.emailTF.state, helperText: $vm.emailTF.helperText, leftIcon: "envelope")
                        .onChange(of: vm.emailTF.value) { _ in
                            if vm.emailTF.value == "" || vm.passwordTF.value == "" {
                                buttonState = .Disabled
                            } else {
                                buttonState = .Default
                            }
                        }
                    XelaTextField(placeholder: vm.passwordTF.placeholder, value: $vm.passwordTF.value, state: $vm.passwordTF.state, helperText: $vm.passwordTF.helperText, secureField: true)
                        .onChange(of: vm.passwordTF.value) { _ in
                            if vm.passwordTF.value == "" || vm.passwordTF.value == "" {
                                buttonState = .Disabled
                            } else {
                                buttonState = .Default
                            }
                        }
                    HStack {
                        Button(action: {
                            self.showingResetPassword.toggle()
                        }, label: {
                            Text("Forgot password?")
                                .xelaButtonMedium()
                        }).halfSheet(showSheet: $showingResetPassword) {
                            ResetPasswordView()
                        } onEnd: {
                            print("Reset Password Closed")
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal)
                XelaButton(text: "Sign In", action: {
                    vm.verifyUser()
                }, size: .Medium, state: $buttonState, autoResize: false)
                    .padding(.horizontal)
                XelaDivider(style: .Dashed, orientation: .Horizontal)
                VStack {
                    Spacer()
                    XelaButton(text: "Sign in with Google", action: {
                        print("sign in with google")
                    }, size: .Large, state: $buttonGoogleState, type: .Primary, background: Color(xelaColor: .Purple), foregroundColor: Color(asset: Colors.primaryButtonForeground), autoResize: false, alignment: .center)
                    Spacer()
                }.padding(.horizontal)
            })
            HStack(spacing: 5) {
                Text("Don't have an account? ")
                    .xelaButtonMedium()
                Button {
                    goToSignup.toggle()

                } label: {
                    Text("Signup").xelaButtonMedium()
                }
                .fullScreenCover(isPresented: $goToSignup) {
                    RegisterView(registerViewPresented: $goToSignup)
                }
            }
        }
        .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
        .animation(startAnimate ? .easeOut : .none)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.startAnimate.toggle()
            }
        })
        .alert(isPresented: $vm.alert, content: {
            Alert(title: Text("Error"), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
        })
        .alert(isPresented: $vm.store_Info, content: {
            Alert(title: Text("Message"), message: Text("Store Information For Future Login Using BioMetric Authentication?"), primaryButton: .default(Text("Accept"), action: {
                // storing Info For BioMetric...
                Stored_User = vm.emailTF.value
                Stored_Password = vm.passwordTF.value
                withAnimation { self.logged = true }
            }), secondaryButton: .cancel {
                // redirecting to Home
                withAnimation { self.logged = true }
            })
        })
        if vm.isLoading {
            LoadingScreenView()
        }
    }
}
