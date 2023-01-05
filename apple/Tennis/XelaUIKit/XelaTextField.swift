//
//  XelaTextField.swift
//  XelaExampleApp
//
//  Created by Sherhan on 01.08.2021.
//

import SwiftUI

struct XelaTextField: View {
    @State var placeholder: String
    @Binding var value: String
    @Binding var state: XelaTextFieldState
    @Binding var helperText: String

    @State var leftIcon: String? = nil
    var rightIcon: String? = nil

    @FocusState private var isFocused: Bool

    var rightIconAction: (() -> Void?)?

    var disableAutocorrection: Bool = true

    var secureField: Bool = false

    var background: Color = .init(asset: Colors.tfDefaultFill)
    var disabledBackground: Color = .init(asset: Colors.tfDisabledFill)
    var placeholderColor: Color = .init(asset: Colors.tfDefaultPlaceholder)
    var textfieldColor: Color = .init(asset: Colors.tfDefaultValue)
    var disabledTextfieldColor: Color = .init(asset: Colors.tfDisabledValue)
    var borderDefaultColor: Color = .init(asset: Colors.tfDefaultBorder)
    var borderDisabledColor: Color = .init(asset: Colors.tfDisabledBorder)
    var borderErrorColor: Color = .init(asset: Colors.tfErrorValue)
    var borderSuccessColor: Color = .init(asset: Colors.tfSuccessValue)
    var borderHoverColor: Color = .init(asset: Colors.tfHoverBorder)
    var borderFocusColor: Color = .init(asset: Colors.tfFocusedBorder)
    var iconDefaultColor: Color? = Color(asset: Colors.tfDefaultImages)
    var iconDisabledColor: Color = .init(asset: Colors.tfDisabledImages)
    var iconErrorColor: Color = .init(asset: Colors.tfErrorImages)
    var iconSuccessColor: Color = .init(asset: Colors.tfSuccessImages)

    var defaultHelperTextColor: Color = .init(asset: Colors.tfDefaultHelperText)
    var disabledHelperTextColor: Color = .init(asset: Colors.tfDisabledHelperText)
    var errorHelperTextColor: Color = .init(asset: Colors.tfErrorHelperText)
    var successHelperTextColor: Color = .init(asset: Colors.tfSuccessHelperText)

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                if leftIcon != nil {
                    Image(leftIcon!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(state == .Disabled ? iconDisabledColor : state == .Error ? iconErrorColor : state == .Success ? iconSuccessColor : iconDefaultColor)
                }
                if secureField {
                    SecureField("", text: $value)
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextfieldColor : textfieldColor)
                        .xelaPlaceholder(when: value.isEmpty) {
                            VStack(spacing: 8) {
                                Text(placeholder)
                                    .xelaSmallBody()
                                    .foregroundColor(placeholderColor)
                                    .offset(y: value.isEmpty ? 0 : -10)
                                    .lineLimit(1)
                                if !value.isEmpty {
                                    Spacer()
                                }
                            }
                        }
                        .frame(height: 40)
                        .offset(y: value.isEmpty ? 0 : 10)
                        .disableAutocorrection(disableAutocorrection)
                        .onHover { didHover in
                            if didHover {
                                self.state = .Hover
                            }
                        }
                        .focused($isFocused)
                        .onChange(of: isFocused) { isFocused in
                            if isFocused {
                                self.state = .Focus
                            } else {
                                self.state = .Default
                            }
                        }
                } else {
                    TextField("", text: $value)
                        .autocapitalization(.none)
                        .font(.system(size: 14, weight: .bold))
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextfieldColor : textfieldColor)
                        .xelaPlaceholder(when: value.isEmpty) {
                            VStack(spacing: 8) {
                                Text(placeholder)
                                    .xelaSmallBody()
                                    .foregroundColor(placeholderColor)
                                    .offset(y: value.isEmpty ? 0 : -10)
                                    .lineLimit(1)
                                if !value.isEmpty {
                                    Spacer()
                                }
                            }
                        }
                        .frame(height: 40)
                        .offset(y: value.isEmpty ? 0 : 10)
                        .disableAutocorrection(disableAutocorrection)
                        .onHover { didHover in
                            if didHover {
                                self.state = .Hover
                            }
                        }
                        .focused($isFocused)
                        .onChange(of: isFocused) { isFocused in
                            if isFocused {
                                self.state = .Focus
                            } else {
                                self.state = .Default
                            }
                        }
                }
                if let action = rightIconAction {
                    Button {
                        action()
                    } label: {
                        Image(rightIcon!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .foregroundColor(state == .Disabled ? iconDisabledColor : state == .Error ? iconErrorColor : state == .Success ? iconSuccessColor : iconDefaultColor)
                    }

                } else {
                    if rightIcon != nil {
                        Image(rightIcon!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .foregroundColor(state == .Disabled ? iconDisabledColor : state == .Error ? iconErrorColor : state == .Success ? iconSuccessColor : iconDefaultColor)
                    }
                }
            }
            .frame(height: 38)
            .padding(EdgeInsets(top: 6, leading: leftIcon != nil ? 14 : 22, bottom: 6, trailing: rightIcon != nil ? 14 : 22))
            .background(state == .Disabled ? disabledBackground : background)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(state == .Disabled ? borderDisabledColor : state == .Error ? borderErrorColor : state == .Success ? borderSuccessColor : state == .Hover ? borderHoverColor : state == .Focus ? borderFocusColor : borderDefaultColor, lineWidth: state == .Focus ? 2 : 1)
            )
            .onHover { over in

                if over {
                    if state == .Default {
                        state = .Hover
                    }
                } else {
                    state = .Default
                }
            }

            if !helperText.isEmpty {
                Text(helperText)
                    .xelaCaption()
                    .foregroundColor(state == .Disabled ? disabledHelperTextColor : state == .Error ? errorHelperTextColor : state == .Success ? successHelperTextColor : defaultHelperTextColor)
            }
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
