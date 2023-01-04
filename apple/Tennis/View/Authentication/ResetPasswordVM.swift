//
//  ResetPasswordVM.swift
//  Tennis
//
//  Created by Pranav Suri on 27/3/21.
//

import Firebase
import LocalAuthentication
import SwiftUI

class ResetPasswordVM: ObservableObject {
    @Published var isLoading = false

    @Published var emailTF = XelaTextFieldProperties(placeholder: "Email", value: "", state: .Default, helperText: "")
    @Published var resetButton = XelaButtonProperties(text: "Reset Password", state: .Default)
    // For Alerts..
    @Published var alert = false
    @Published var alertMsg = ""

    func resetPassword() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        isLoading = true
        Auth.auth().sendPasswordReset(withEmail: emailTF.value) { err in
            if let error = err {
                self.isLoading.toggle()
                self.alertMsg = error.localizedDescription
                self.alert.toggle()
                return
            } else {
                self.isLoading.toggle()
                self.alertMsg = "A password reset email has been sent to the email address provided."
                self.alert.toggle()
            }
        }
    }
}
