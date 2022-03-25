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
    
    func getBioMetricStatus() -> Bool {
        let scanner = LAContext()
        if email != "", email == Stored_User, scanner.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: .none) {
            return true
        }
        
        return false
    }
    
    func authenticateUser() {
        let scanner = LAContext()
        scanner.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To Unlock \(email)") { _, err in
            if err != nil {
                print(err!.localizedDescription)
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
        print("Sign in with google")
    }
    
    func verifyUser() {
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
