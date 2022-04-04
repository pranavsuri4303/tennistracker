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
        HStack{
            Image(systemName: "\(imageName)")
                .foregroundColor(.white)
                .frame(width: 35)
                .frame(height: 25)
            if isPicker{
                TextFieldWithPickerView(data: $data,
                                        placeholder: placeholder,
                                        selectionIndex: self.$selectionIndex,
                                        selectedText: $text)
                    .frame(height: 0)
            }else{
                if isSecure{
                    SecureField("\(placeholder)", text: $text)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }else{
                    TextField("\(placeholder)", text: $text)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
            }
        }
        .padding()
        .background(Color(.white).opacity(text=="" ? 0.02 : 0.12))
        .cornerRadius(15)
        .padding(.horizontal)
        .preferredColorScheme(.dark)
    }
}

