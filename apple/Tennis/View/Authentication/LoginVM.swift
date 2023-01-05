//
//  LoginViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import Firebase
import LocalAuthentication
import SwiftUI

class LoginVM: ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""

    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    @AppStorage("status") var logged = false

    @Published var isLoading = false

    @Published var emailTF = XelaTextFieldProperties(placeholder: "Email",
                                                     value: "",
                                                     state: .Default,
                                                     helperText: "")
    @Published var passwordTF = XelaTextFieldProperties(placeholder: "Password",
                                                        value: "",
                                                        state: .Default,
                                                        helperText: "")
    @Published var logInButton = XelaButtonProperties(text: "Log in", state: .Default)
    @Published var googleButton = XelaButtonProperties(text: "Sign in with Google", state: .Default)

    func signInWithGoogle() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func verifyUser() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        Auth.auth().signIn(withEmail: emailTF.value, password: passwordTF.value) { _, err in
            self.isLoading = false
            if let error = err {
                self.alertMsg = error.localizedDescription
                self.alert.toggle()
                self.emailTF.state = .Error
                self.passwordTF.state = .Error
                return
            } else {
                withAnimation { self.logged = true }
            }
        }
    }
}
