//
//  NumberInputComponent.swift
//  XelaExampleApp
//
//  Created by Sherhan on 10.08.2021.
//

import SwiftUI

struct NumberInputComponent: View {
    
    @State var number1:Int = 1
    @State var number1HelperText:String = "Helper Text"
    @State var number1State:XelaNumberInputState = .Default
    
    @State var number2:Int = 1
    @State var number2HelperText:String = ""
    @State var number2State:XelaNumberInputState = .Default
    
    @State var number3:Int = 1
    @State var number3HelperText:String = ""
    @State var number3State:XelaNumberInputState = .Default
    
    @State var number4:Int = 1
    @State var number4HelperText:String = ""
    @State var number4State:XelaNumberInputState = .Default
    
    @State var number5:Int = 1
    @State var number5HelperText:String = ""
    @State var number5State:XelaNumberInputState = .Default
    
    @State var number6:Int = 1
    @State var number6HelperText:String = ""
    @State var number6State:XelaNumberInputState = .Default
    
    @State var number7:Int = 1
    @State var number7HelperText:String = ""
    @State var number7State:XelaNumberInputState = .Default
    
    @State var number8:Int = 1
    @State var number8HelperText:String = ""
    @State var number8State:XelaNumberInputState = .Default
    
    @State var number9:Int = 1
    @State var number9HelperText:String = "Helper Text"
    @State var number9State:XelaNumberInputState = .Default
    
    @State var number10:Int = 1
    @State var number10HelperText:String = "Helper Text"
    @State var number10State:XelaNumberInputState = .Default
    
    @State var number11:Int = 1
    @State var number11HelperText:String = "Helper Text"
    @State var number11State:XelaNumberInputState = .Default
    
    @State var number12:Int = 1
    @State var number12HelperText:String = "Helper Text"
    @State var number12State:XelaNumberInputState = .Default
    
    @State var number13:Int = 1
    @State var number13HelperText:String = "Helper Text"
    @State var number13State:XelaNumberInputState = .Default
    
    @State var number14:Int = 1
    @State var number14HelperText:String = "Helper Text"
    @State var number14State:XelaNumberInputState = .Default
    
    
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Number Input")
                    .xelaSubheadline()
                    .foregroundColor(Color(xelaColor: .Gray2))
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            ScrollView {
                HStack(spacing:0) {
                    VStack(alignment:.center, spacing:16) {
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Usage Example")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number1.onChange({ value in
                                    if value < 0 {
                                        self.number1 = 0
                                    }
                                    if value == 0 {
                                        number1State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number1State = .Success
                                        }
                                        else if value == 4 {
                                            number1State = .Error
                                        }
                                        else {
                                            number1State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number1HelperText, label: "width", state: $number1State, controls: .LeftRight, decreaseIcon: "decrease", increaseIcon: "increase")
                                
                                XelaNumberInput(value: $number2.onChange({ value in
                                    if value < 0 {
                                        self.number2 = 0
                                    }
                                    if value == 0 {
                                        number2State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number2State = .Success
                                        }
                                        else if value == 4 {
                                            number2State = .Error
                                        }
                                        else {
                                            number2State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number2HelperText, label: nil, state: $number2State, controls: .Right, decreaseIcon: "decrease", increaseIcon: "increase")
                            }
                        }
                        
                        VStack(spacing:14) {
                            HStack {
                                Spacer()
                                Text("Variants")
                                    .xelaCaption()
                                    .foregroundColor(Color(xelaColor: .Gray4))
                                Spacer()
                            }
                            
                            XelaDivider(color:Color(xelaColor: .Gray11))
                        }
                        .padding(.vertical, 8)
                        
                        Group {
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number3.onChange({ value in
                                    if value < 0 {
                                        self.number3 = 0
                                    }
                                    if value == 0 {
                                        number3State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number3State = .Success
                                        }
                                        else if value == 4 {
                                            number3State = .Error
                                        }
                                        else {
                                            number3State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number3HelperText, label: nil, state: $number3State, controls: .LeftRight, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number4.onChange({ value in
                                    if value < 0 {
                                        self.number4 = 0
                                    }
                                    if value == 0 {
                                        number4State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number4State = .Success
                                        }
                                        else if value == 4 {
                                            number4State = .Error
                                        }
                                        else {
                                            number4State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number4HelperText, label: nil, state: $number4State, controls: .Left, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                            
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number5.onChange({ value in
                                    if value < 0 {
                                        self.number5 = 0
                                    }
                                    if value == 0 {
                                        number5State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number5State = .Success
                                        }
                                        else if value == 4 {
                                            number5State = .Error
                                        }
                                        else {
                                            number5State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number5HelperText, label: nil, state: $number5State, controls: .Right, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number6.onChange({ value in
                                    if value < 0 {
                                        self.number6 = 0
                                    }
                                    if value == 0 {
                                        number6State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number6State = .Success
                                        }
                                        else if value == 4 {
                                            number6State = .Error
                                        }
                                        else {
                                            number6State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number6HelperText, label: "Label", state: $number6State, controls: .LeftRight, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                            
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number7.onChange({ value in
                                    if value < 0 {
                                        self.number7 = 0
                                    }
                                    if value == 0 {
                                        number7State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number7State = .Success
                                        }
                                        else if value == 4 {
                                            number7State = .Error
                                        }
                                        else {
                                            number7State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number7HelperText, label: "Label", state: $number7State, controls: .Left, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number8.onChange({ value in
                                    if value < 0 {
                                        self.number8 = 0
                                    }
                                    if value == 0 {
                                        number8State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number8State = .Success
                                        }
                                        else if value == 4 {
                                            number8State = .Error
                                        }
                                        else {
                                            number8State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number8HelperText, label: "Label", state: $number8State, controls: .Right, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                        }
                        
                        Group {
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number9.onChange({ value in
                                    if value < 0 {
                                        self.number9 = 0
                                    }
                                    if value == 0 {
                                        number9State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number9State = .Success
                                        }
                                        else if value == 4 {
                                            number9State = .Error
                                        }
                                        else {
                                            number9State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number9HelperText, label: nil, state: $number9State, controls: .LeftRight, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number10.onChange({ value in
                                    if value < 0 {
                                        self.number10 = 0
                                    }
                                    if value == 0 {
                                        number10State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number10State = .Success
                                        }
                                        else if value == 4 {
                                            number10State = .Error
                                        }
                                        else {
                                            number10State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number10HelperText, label: nil, state: $number10State, controls: .Left, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                            
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number11.onChange({ value in
                                    if value < 0 {
                                        self.number11 = 0
                                    }
                                    if value == 0 {
                                        number11State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number11State = .Success
                                        }
                                        else if value == 4 {
                                            number11State = .Error
                                        }
                                        else {
                                            number11State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number11HelperText, label: nil, state: $number11State, controls: .Right, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number12.onChange({ value in
                                    if value < 0 {
                                        self.number12 = 0
                                    }
                                    if value == 0 {
                                        number12State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number12State = .Success
                                        }
                                        else if value == 4 {
                                            number12State = .Error
                                        }
                                        else {
                                            number12State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number12HelperText, label: "Label", state: $number12State, controls: .LeftRight, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                            
                            HStack(alignment:.top) {
                                XelaNumberInput(value: $number13.onChange({ value in
                                    if value < 0 {
                                        self.number13 = 0
                                    }
                                    if value == 0 {
                                        number13State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number13State = .Success
                                        }
                                        else if value == 4 {
                                            number13State = .Error
                                        }
                                        else {
                                            number13State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number13HelperText, label: "Label", state: $number13State, controls: .Left, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                                
                                XelaNumberInput(value: $number14.onChange({ value in
                                    if value < 0 {
                                        self.number14 = 0
                                    }
                                    if value == 0 {
                                        number14State = .Default
                                    }
                                    else {
                                        if value == 3 {
                                            number14State = .Success
                                        }
                                        else if value == 4 {
                                            number14State = .Error
                                        }
                                        else {
                                            number14State = .Focus
                                        }
                                    }
                    
                                }), helperText: $number14HelperText, label: "Label", state: $number14State, controls: .Right, decreaseIcon: "icon-gray", increaseIcon: "icon-gray")
                            }
                        }
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 24, bottom: 24, trailing: 24))
                    Spacer()
                }
            }
            Spacer()
        }
        .background(Color(xelaColor: .Gray12))
    }
}
