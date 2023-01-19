//
//  StringView.swift
//  Tennis
//
//  Created by Pranav Suri on 23/1/21.
//

import Firebase
import FirebaseFirestoreSwift
import SwiftUI

struct AddNewStringView: View {
    @StateObject var vm = StringsVM()
    @Binding var showingAddString: Bool
    @State var dateSelected = Date()
    @State private var alertShown = false
    @State private var errorMessage = ""
    @State var showDatePicker = false
    @State private var submitButtonState = XelaButtonState.Disabled
    @State private var clearAllState = XelaButtonState.Default
    
    

    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .center, spacing: 18) {
                    Text("Add new string")
                        .xelaHeadline()
                    
                    XelaTextField(placeholder: "String Name",
                                    value: $vm.stringEntry.stringName.toUnwrapped(defaultValue: "")
                    )
                    
                    XelaTextField(placeholder: vm.reStringingDateTF.placeholder,
                                  value: $vm.reStringingDateTF.value,
                                  state: vm.reStringingDateTF.state,
                                  helperText: "",
                                  leftIcon: Icons.appointments.name,
                                  rightIcon: (showDatePicker ? Icons.tick.name : Icons.down.name),
                                  rightIconAction: { withAnimation { showDatePicker.toggle() } },
                                  isDatePicker: true,
                                  datePickerView: XelaDatePicker(xelaDateManager: vm.stringDateManager,
                                                                 selectedDateString: $vm.reStringingDateTF.value,
                                                                 monthOffset: ((100 * 12) - 1)),
                                  showDatePicker: showDatePicker)
                    
                    HStack {
                        XelaNumberInput(value: $vm.mainsInput.value, helperText: vm.mainsInput.helperText, label: vm.mainsInput.label, state: vm.mainsInput.state, controls: .LeftRight, decreaseIcon: vm.mainsInput.decreaseIcon, increaseIcon: vm.mainsInput.increaseIcon)
                        Spacer()
                        XelaNumberInput(value: $vm.crossesInput.value, helperText: vm.crossesInput.helperText, label: vm.crossesInput.label, state: vm.crossesInput.state, controls: .LeftRight, decreaseIcon: vm.crossesInput.decreaseIcon, increaseIcon: vm.crossesInput.increaseIcon)
                    }
                    Spacer()
                    
                    HStack(spacing: 24) {
                        XelaButton(text: "Clear all", size: .Large, state: $clearAllState,  type: .Secondary)
                        XelaButton(text: "Add String", size: .Large, state: $submitButtonState)
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
            .onChange(of: vm.stringEntry.stringName) { stringName in
                if (stringName != "" && vm.reStringingDateTF.value != "") {
                    submitButtonState = .Default
                } else {
                    submitButtonState = .Disabled
                }
            }
            .onChange(of: vm.reStringingDateTF.value) { reStringDate in
                if (reStringDate != "" && vm.reStringingDateTF.value != "") {
                    submitButtonState = .Default
                } else {
                    submitButtonState = .Disabled
                }
            }
            if vm.isLoading {
                LoadingScreenView()
            }
        }
    }
}
