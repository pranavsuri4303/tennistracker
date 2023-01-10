//
//  XelaNumberInput.swift
//  XelaExampleApp
//
//  Created by Sherhan on 01.08.2021.
//

import SwiftUI

struct XelaNumberInput: View {
    @Binding var value: Int
    var helperText: String
    var label: String? = nil

    @State var state: XelaNumberInputState
    var controls: XelaNumberInputControls = .LeftRight

    var decreaseIcon: String
    var increaseIcon: String

    var labelColor: Color = .init(asset: Colors.tfDefaultValue)
    var valueColor: Color = .init(asset: Colors.tfDefaultValue)

    var helperTextColor: Color = .init(asset: Colors.tfDefaultHelperText)

    var controlsColor: Color = .init(asset: Colors.buttonPrimaryDefaultFill)

    var defaultBackground: Color = .init(asset: Colors.tfDefaultFill)
    var disabledBackground: Color = .init(asset: Colors.tfDisabledFill)

    var defaultBorderColor: Color = .init(asset: Colors.tfDefaultBorder)
    var focusBorderColor: Color = .init(asset: Colors.tfFocusedBorder)
    var errorBorderColor: Color = .init(asset: Colors.tfErrorBorder)
    var successBorderColor: Color = .init(asset: Colors.tfSuccessBorder)
    var hoverBorderColor: Color = .init(asset: Colors.tfHoverBorder)
    var disabledBorderColor: Color = .init(asset: Colors.tfDisabledBorder)

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                if controls == .LeftRight || controls == .Left {
                    VStack(spacing: 8) {
                        if controls == .LeftRight {
                            decreaseBtn()
                        } else if controls == .Left {
                            increaseBtn()
                            decreaseBtn()
                        }
                    }
                    Spacer()
                }

                VStack(alignment: controls == .Left ? .trailing : controls == .Right ? .leading : .center, spacing: 0) {
                    if label != nil {
                        Text(label!)
                            .xelaSmallBody()
                            .lineLimit(1)
                            .foregroundColor(labelColor)
                            .padding(.bottom, 5)
                    }
                    Text("\(value)")
                        .xelaButtonMedium()
                        .lineLimit(1)
                        .foregroundColor(valueColor)
                }
                .frame(height: 35)

                if controls == .LeftRight || controls == .Right {
                    Spacer()
                    VStack(spacing: 8) {
                        if controls == .LeftRight {
                            increaseBtn()
                        } else if controls == .Right {
                            increaseBtn()
                            decreaseBtn()
                        }
                    }
                }
            }
            .frame(width: 144 - 32)
            .frame(height: 40)
            // .font(.system(size: 14, weight: .bold))
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
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
                    .foregroundColor(helperTextColor)
            }
        }
    }

    @ViewBuilder func decreaseBtn() -> some View {
        Button(action: {
            value -= 1
        }) {
            Image(decreaseIcon)
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundColor(controlsColor)
        }
    }

    @ViewBuilder func increaseBtn() -> some View {
        Button(action: {
            value += 1
        }) {
            Image(increaseIcon)
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundColor(controlsColor)
        }
    }
}

class XelaNumberInputProperties: Equatable {
    internal init(label: String, value: Int, state: XelaNumberInputState, helperText: String, decreaseIcon: String, increaseIcon: String) {
        self.label = label
        self.value = value
        self.state = state
        self.helperText = helperText
        self.decreaseIcon = decreaseIcon
        self.increaseIcon = increaseIcon
    }

    var label: String
    var value: Int
    var state: XelaNumberInputState
    var helperText: String
    var decreaseIcon: String
    var increaseIcon: String

    static func == (lhs: XelaNumberInputProperties, rhs: XelaNumberInputProperties) -> Bool {
        return lhs.label == rhs.label &&
            lhs.value == rhs.value &&
            lhs.state == rhs.state &&
            lhs.helperText == rhs.helperText &&
            lhs.decreaseIcon == rhs.decreaseIcon &&
            lhs.increaseIcon == rhs.increaseIcon
    }
}
