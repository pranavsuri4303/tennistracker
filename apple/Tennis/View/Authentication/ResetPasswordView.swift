//
//  ResetPasswordView.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI

struct ResetPasswordView: View {
    @StateObject var vm = ResetPasswordVM()

    var body: some View {
        ZStack {
            VStack(spacing: 12) {
                Image("resetPassword")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack {
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text("Reset password")
                            .xelaHeadline()
                        Text("A password reset link will be sent to your email.")
                            .xelaSubheadline()
                            .foregroundColor(.secondary)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)
                    })
                    Spacer()
                }
                XelaTextField(placeholder: vm.emailTF.placeholder, value: $vm.emailTF.value, state: $vm.emailTF.state, helperText: $vm.emailTF.helperText, leftIcon: Icons.envelope.name, disableAutocorrection: true)
                Spacer()
                XelaButton(text: vm.resetButton.text, action: {
                    vm.resetPassword()
                }, size: .Large, state: $vm.resetButton.state, type: .Primary, autoResize: false)
                    .alert(isPresented: $vm.alert, content: {
                        Alert(title: Text(""), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                    })
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
            if vm.isLoading {
                LoadingScreenView()
            }
        }
    }
}
