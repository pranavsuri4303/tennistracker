//
//  RDTextField.swift
//  Tennis
//
//  Created by Pranav Suri on 13/1/22.
//

import SwiftUI

struct RDTextField: View {
    var placeholder: String
    @Binding var text: String
    var imageName: String
    var isSecure: Bool
    var isPicker: Bool
    @State var data: [String] = []
    @State var selectionIndex = 0

    var body: some View {
        HStack {
            Image(systemName: "\(imageName)")
                .foregroundColor(.white)
                .frame(width: 30)
                .frame(height: 20)
            if isPicker {
                TextFieldWithPickerView(data: $data,
                                        placeholder: placeholder,
                                        selectionIndex: self.$selectionIndex,
                                        selectedText: $text)
                    .frame(height: 0)
            } else {
                if isSecure {
                    SecureField("\(placeholder)", text: $text)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .frame(height: 0)
                } else {
                    TextField("\(placeholder)", text: $text)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .frame(height: 0)
                }
            }
        }
        .padding(12)
        .background(Color(.white).opacity(text == "" ? 0.04 : 0.12))
        .cornerRadius(12)
    }
}
