//
//  NewUserView.swift
//  Tennis
//
//  Created by Pranav Suri on 22/1/21.
//

import ImagePickerView
import SwiftUI

struct NewUserView: View {
    @Binding var isPresented: Bool
    @ObservedObject var vm = RegisterVM()
    @State var startAnimate = false

    @State var selectionIndex = 0
    @State var yob = ""
    // Image
    @State var isImagePickerViewPresented = false
    @State var pickedImage: UIImage? = nil

    @State private var alertShown = false
    @State private var errorMessage = ""
    @State private var playingHandCode = ""
    @State private var sex = ""

    @State var showDatePicker = false
    let dateFormat = DateFormatter()

    var body: some View {
        ZStack {
            VStack(spacing: 18) {
                ScrollView {
                    VStack {
                        XelaUserAvatar(size: .Large, style: .Rectangle, image: pickedImage != nil ? Image(uiImage: pickedImage!) : nil)
                            .onTapGesture {
                                isImagePickerViewPresented = true
                            }
                            .sheet(isPresented: $isImagePickerViewPresented) {
                                UIImagePickerView(allowsEditing: true, delegate: UIImagePickerView.Delegate(isPresented: $isImagePickerViewPresented, didCancel: { uiImagePickerController in
                                    print("Did Cancel: \(uiImagePickerController)")
                                }, didSelect: { result in
                                    let uiImagePickerController = result.picker
                                    let image = result.image
                                    print("Did Select image: \(image) from \(uiImagePickerController)")
                                    pickedImage = image
                                }))
                            }
                        VStack(alignment: .leading, spacing: 4) {
                            Text("New user details")
                                .xelaHeadline()
                            Text("Please enter the following details for a more personalized experience.")
                                .xelaSubheadline()
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        VStack(spacing: 12) {
                            XelaTextField(placeholder: vm.givenNameTF.placeholder, value: $vm.newUser.standardGivenName.toUnwrapped(defaultValue: ""), state: $vm.givenNameTF.state, helperText: $vm.givenNameTF.helperText, leftIcon: Icons.user.name, disableAutocorrection: false)
                            XelaTextField(placeholder: vm.familyNameTF.placeholder, value: $vm.newUser.standardFamilyName.toUnwrapped(defaultValue: ""), state: $vm.familyNameTF.state, helperText: $vm.familyNameTF.helperText, leftIcon: Icons.user.name, disableAutocorrection: false)
                            XelaTextField(placeholder: vm.dobTF.placeholder, value: $vm.yobDateManager.selectedDateString, state: $vm.dobTF.state, helperText: $vm.dobTF.helperText, leftIcon: Icons.appointments.name, isDatePicker: true, datePickerView: XelaDatePicker(xelaDateManager: vm.yobDateManager, monthOffset: 100 * 12), showDatePicker: showDatePicker)
                                .overlay(alignment: .top, content: {
                                    Button {
                                        withAnimation {
                                            showDatePicker.toggle()
                                        }
                                    } label: {
                                        Rectangle()
                                            .fill(Color.white.opacity(0))
                                    }
                                    .frame(height: 40)
                                })
                        }
                    }
                }
                Spacer()
                XelaButton(text: "Test", state: $vm.registerButton.state, type: .Primary)
            }
            .padding(.horizontal, 24)
            .padding(.vertical)
            .background(Color(asset: Colors.background).ignoresSafeArea(.all, edges: .all))
            .alert(errorMessage, isPresented: $alertShown) {
                Button("Ok") {
                    alertShown = false
                }
            }

            if vm.isLoading {
                LoadingScreenView()
            }
        }
    }
}

//
// struct Register_Preview: PreviewProvider {
//    static var previews: some View {
//        NewUserView(isPresented: .constant(false), vm: RegisterVM())
//    }
// }
