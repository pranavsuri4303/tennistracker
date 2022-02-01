//
//  RDTextField.swift
//  Tennis
//
//  Created by Pranav Suri on 13/1/22.
//

import SwiftUI

struct RDTextField: View {
    var title: String
    @Binding var text: String
    var imageName: String
    var isSecure: Bool

    var body: some View {
        HStack{
            Image(systemName: "\(imageName)")
                .foregroundColor(.white)
                .frame(width: 35)
                .frame(height: 0)

            if isSecure{
                SecureField("\(title)", text: $text)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }else{
                TextField("\(title)", text: $text)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }

        }
        .padding()
        .background(Color(.white).opacity(text=="" ? 0.02 : 0.12))
        .cornerRadius(15)
        .padding(.horizontal)
    }
}

