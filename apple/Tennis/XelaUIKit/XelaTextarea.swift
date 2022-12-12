//
//  XelaTextarea.swift
//  XelaExampleApp
//
//  Created by Sherhan on 01.08.2021.
//

import SwiftUI

struct XelaTextarea: View {
    @Binding var value: String
    @Binding var helperText: String
    @State var placeholder: String
    @Binding var state: XelaTextareaState
    var disableAutocorrection: Bool = false
    var counter: Bool = false
    var maxSymbols = 200

    var placeholderColor: Color = .init(xelaColor: .Gray8)

    var counterColor: Color = .init(xelaColor: .Gray8)

    var disabledTextColor: Color = .init(xelaColor: .Gray8)
    var errorTextColor: Color = .init(xelaColor: .Red3)
    var defaultTextColor: Color = .init(xelaColor: .Gray2)

    var disabledBackground: Color = .init(xelaColor: .Gray12)
    var defaultBackground: Color = .init(.white)

    var disabledBorderColor: Color = .init(xelaColor: .Gray8)
    var errorBorderColor: Color = .init(xelaColor: .Red3)
    var successBorderColor: Color = .init(xelaColor: .Green1)
    var hoverBorderColor: Color = .init(xelaColor: .Blue5)
    var focusBorderColor: Color = .init(xelaColor: .Blue5)
    var defaultBorderColor: Color = .init(xelaColor: .Gray11)

    var disabledHelperText: Color = .init(xelaColor: .Gray8)
    var errorHelperText: Color = .init(xelaColor: .Red3)
    var successHelperText: Color = .init(xelaColor: .Green1)
    var defaultHelperText: Color = .init(xelaColor: .Gray8)

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    HStack {
                        if !placeholder.isEmpty {
                            Text(placeholder)
                                .xelaSmallBody()
                                .lineLimit(1)
                                .foregroundColor(placeholderColor)
                                .padding(.bottom, 5)
                        }
                        Spacer()
                        if counter {
                            Text("\(value.count)/\(maxSymbols)")
                                .xelaSmallBody()
                                .lineLimit(1)
                                .foregroundColor(counterColor)
                                .padding(.bottom, 5)
                        }
                    }

                    TextEditor(text: $value)
                        .font(.system(size: 14, weight: .bold))
                        .disabled(state == .Disabled ? true : false)
                        .foregroundColor(state == .Disabled ? disabledTextColor : state == .Error ? errorTextColor : defaultTextColor)
                        .colorMultiply(state == .Disabled ? disabledBackground : defaultBackground)
                        .disableAutocorrection(disableAutocorrection)
                        .padding(.horizontal, -5)
                    // .offset(x: -4, y: -4)
                }
            }
            .frame(height: 200)
            // .font(.system(size: 14, weight: .bold))
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            .background(state == .Disabled ? disabledBackground : defaultBackground)
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(state == .Disabled ? disabledBorderColor : state == .Error ? errorBorderColor : state == .Success ? successBorderColor : state == .Hover ? hoverBorderColor : state == .Focus ? focusBorderColor : defaultBorderColor, lineWidth: state == .Focus ? 2 : 1)
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
                    .foregroundColor(state == .Disabled ? disabledHelperText : state == .Error ? errorHelperText : state == .Success ? successHelperText : defaultHelperText)
            }
        }
    }
}
