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

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 18) {
                Text("Add new string")
                    .xelaHeadline()
                RDTextField(placeholder: "String name", text: $vm.stringEntry.stringName.toUnwrapped(defaultValue: ""), imageName: "number", isSecure: false, isPicker: false)
                HStack {
                    XelaNumberInput(value: $vm.mainsInput.value, helperText: $vm.mainsInput.helperText, label: vm.mainsInput.label, state: $vm.mainsInput.state, controls: .LeftRight, decreaseIcon: vm.mainsInput.decreaseIcon, increaseIcon: vm.mainsInput.increaseIcon)
                    Spacer()
                    XelaNumberInput(value: $vm.crossesInput.value, helperText: $vm.crossesInput.helperText, label: vm.crossesInput.label, state: $vm.crossesInput.state, controls: .LeftRight, decreaseIcon: vm.crossesInput.decreaseIcon, increaseIcon: vm.crossesInput.increaseIcon)
                }
                Spacer()
                RDButton(withTitle: "Test")
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
