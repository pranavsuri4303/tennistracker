//
//  File.swift
//  Tennis
//
//  Created by Pranav Suri on 5/2/21.
//

import SwiftUI

struct TextFieldWithPickerView: UIViewRepresentable {
    @Binding var data: [String]
    var placeholder: String

    @Binding var selectionIndex: Int
    @Binding var selectedText: String

    private let textField = UITextField()
    private let picker = UIPickerView()
    private let keyboard = UIInputView()
    func makeCoordinator() -> TextFieldWithPickerView.Coordinator {
        Coordinator(textfield: self)
    }

    func makeUIView(context: UIViewRepresentableContext<TextFieldWithPickerView>) -> UITextField {
        picker.delegate = context.coordinator
        picker.dataSource = context.coordinator
        picker.backgroundColor = .gray
        picker.tintColor = .black
        textField.placeholder = placeholder
        textField.inputView = picker
        textField.delegate = context.coordinator
        return textField
    }

    func updateUIView(_ uiView: UITextField, context _: UIViewRepresentableContext<TextFieldWithPickerView>) {
        uiView.text = selectedText
    }

    class Coordinator: NSObject, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
        private let parent: TextFieldWithPickerView

        init(textfield: TextFieldWithPickerView) {
            parent = textfield
        }

        func numberOfComponents(in _: UIPickerView) -> Int {
            1
        }

        func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
            parent.data.count
        }

        func pickerView(_: UIPickerView, titleForRow row: Int, forComponent _: Int) -> String? {
            parent.data[row]
        }

        func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent _: Int) {
            parent.$selectionIndex.wrappedValue = row
            parent.selectedText = parent.data[parent.selectionIndex]
            parent.textField.endEditing(true)
        }

        func textFieldDidEndEditing(_: UITextField) {
            parent.textField.resignFirstResponder()
        }
    }
}
