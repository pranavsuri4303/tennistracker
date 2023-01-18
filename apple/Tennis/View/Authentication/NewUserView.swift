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
    @Binding var additionalInfoRequired: Bool
    @ObservedObject var vm: RegisterVM
    @State var startAnimate = false
    // Image
    @State var isImagePickerViewPresented = false
    @State var pickedImage: UIImage? = nil
    
    @State private var alertShown = false
    @State private var errorMessage = ""
    @State var sex = ""
    @State var playingHand = ""
    @State var showNationalityPicker = false
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
                            XelaTextField(placeholder: vm.givenNameTF.placeholder, value: $vm.user.standardGivenName.toUnwrapped(defaultValue: ""), state: vm.givenNameTF.state, helperText: vm.givenNameTF.helperText, leftIcon: Icons.user.name, disableAutocorrection: true)
                            XelaTextField(placeholder: vm.familyNameTF.placeholder, value: $vm.user.standardFamilyName.toUnwrapped(defaultValue: ""), state:  vm.familyNameTF.state, helperText: vm.familyNameTF.helperText, leftIcon: Icons.user.name, disableAutocorrection: true)
                            XelaTextField(placeholder: vm.dobTF.placeholder,
                                          value: $vm.user.birthDate.toUnwrapped(defaultValue: ""),
                                          state: vm.dobTF.state,
                                          helperText: "",
                                          leftIcon: Icons.appointments.name,
                                          rightIcon: (showDatePicker ? Icons.tick.name : Icons.down.name),
                                          rightIconAction: { withAnimation { showDatePicker.toggle() } },
                                          isDatePicker: true,
                                          datePickerView: XelaDatePicker(xelaDateManager: vm.dobDateManager,
                                                                         selectedDateString: $vm.user.birthDate.toUnwrapped(defaultValue: ""),
                                                                         monthOffset: ((100 * 12) - 1)),
                                          showDatePicker: showDatePicker)
                            XelaTextField(placeholder: vm.nationalityTF.placeholder,
                                          value: $vm.nationalityTF.value,
                                          state: vm.nationalityTF.state,
                                          helperText: vm.nationalityTF.helperText,
                                          leftIcon: Icons.flag.name,
                                          disableAutocorrection: true,
                                          isDataPicker: true, leftImageDataPickerText: getFlag(from: vm.user.nationalityCode ?? ""))
                            .overlay(alignment: .top, content: {
                                Menu {
                                    ForEach(vm.nationsList, id: \.self) { country in
                                        Button {
                                            vm.updateNationality(for: country)
                                            showNationalityPicker = false
                                        } label: {
                                            Text(country)
                                        }
                                    }
                                } label: {
                                    Rectangle()
                                        .fill(Color.white.opacity(0))
                                }
                                .onTapGesture {
                                    showNationalityPicker = true
                                }
                            })
                            
                            XelaTextField(placeholder: "Sex",
                                          value: $sex,
                                          state: .Default,
                                          helperText: "",
                                          leftIcon: sex == "" ? Icons.ghost.name : sex.lowercased(),
                                          disableAutocorrection: true,
                                          isDataPicker: true)
                            .overlay(alignment: .top, content: {
                                Menu {
                                    ForEach(Sex.allCases, id: \.self) { sex in
                                        Button {
                                            vm.user.sex = sex
                                            self.sex = sex.description
                                        } label: {
                                            Text(sex.description)
                                        }
                                    }
                                } label: {
                                    Rectangle()
                                        .fill(Color.white.opacity(0))
                                }
                            })
                            XelaTextField(placeholder: "Playing Hand",
                                          value: $playingHand,
                                          state: .Default,
                                          helperText: "",
                                          leftIcon: Icons.racketBall.name,
                                          disableAutocorrection: true,
                                          isDataPicker: true)
                            .overlay(alignment: .top, content: {
                                Menu {
                                    ForEach(PlayingHandCode.allCases, id: \.self) { playingHand in
                                        Button {
                                            vm.user.biographicalInformation = BiographicalInformation()
                                            vm.user.biographicalInformation?.playingHand = playingHand
                                            self.playingHand = playingHand.description
                                        } label: {
                                            Text(playingHand.description)
                                        }
                                    }
                                } label: {
                                    Rectangle()
                                        .fill(Color.white.opacity(0))
                                }
                            })
                            
                        }
                    }
                }
                Spacer()
                XelaButton(text: "Create account",
                           action: {
                    vm.uploadUserData(UIImage: pickedImage) { res in
                        switch res {
                        case .success(_):
                            isPresented = false
                            additionalInfoRequired = false
                        case .failure(let failure):
                            print(failure.localizedDescription)
                        }
                    }
                },
                           size: .Large, state: $vm.registerButton.state, type: .Primary, autoResize: false)
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
    
    
    
    private func getFlag(from countryCode: String) -> String {
        countryCode
            .unicodeScalars
            .map({ 127397 + $0.value })
            .compactMap(UnicodeScalar.init)
            .map(String.init)
            .joined()
    }
    
}
