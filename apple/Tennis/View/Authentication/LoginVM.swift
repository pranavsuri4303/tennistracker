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
    @Published var email = ""
    @Published var password = ""

    @Published var alert = false
    @Published var alertMsg = ""

    @AppStorage("stored_User") var Stored_User = ""
    @AppStorage("stored_Password") var Stored_Password = ""
    @AppStorage("status") var logged = false
    @Published var store_Info = false

    @Published var isLoading = false

    @Published var emailTF = XelaTextFieldProperties(placeholder: "Email",
                                                     value: "",
                                                     state: .Default,
                                                     helperText: "")
    @Published var passwordTF = XelaTextFieldProperties(placeholder: "Password",
                                                        value: "",
                                                        state: .Default,
                                                        helperText: "")

    func getBioMetricStatus() -> Bool {
        let scanner = LAContext()
        if email != "", email == Stored_User, scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none) {
            return true
        }

        return false
    }

    func authenticateUser() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        let scanner = LAContext()
        scanner.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To Unlock \(email)") { _, err in
            if err != nil {
                return
            }

            // Settig User Password And Logging IN...
            DispatchQueue.main.async {
                self.password = self.Stored_Password
                self.verifyUser()
            }
        }
    }

    func signInWithGoogle() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func verifyUser() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")

        isLoading = true
        Auth.auth().signIn(withEmail: email, password: password) { _, err in

            self.isLoading = false

            if let error = err {
                self.alertMsg = error.localizedDescription
                self.alert.toggle()
                return
            }
            if self.Stored_User == "" || self.Stored_Password == "" {
                self.store_Info.toggle()
                return
            }

            withAnimation { self.logged = true }
        }
    }
}

class XelaTextFieldProperties: Equatable {
    internal init(placeholder: String, value: String, state: XelaTextFieldState, helperText: String) {
        self.placeholder = placeholder
        self.value = value
        self.state = state
        self.helperText = helperText
    }

    var placeholder: String
    var value: String
    var state: XelaTextFieldState
    var helperText: String

    static func == (lhs: XelaTextFieldProperties, rhs: XelaTextFieldProperties) -> Bool {
        return lhs.placeholder == rhs.placeholder &&
            lhs.value == rhs.value &&
            lhs.state == rhs.state &&
            lhs.helperText == rhs.helperText
    }
}

class XelaButtonProperties {}
