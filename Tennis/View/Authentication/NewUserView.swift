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
    @State private var playingStyle = ""

    var body: some View {
        ZStack {
            VStack {
                Button {
                    isImagePickerViewPresented = true
                } label: {
                    VStack {
                        if pickedImage == nil {
                            Circle()
                                .accentColor(.blue)
                                .frame(width: getRect().width * 0.4, height: getRect().width * 0.4, alignment: .center)
                                .overlay(Image("Male")
                                    .resizable()
                                    .frame(width: getRect().width * 0.4 - 10, height: getRect().width * 0.4 - 10)
                                    .clipShape(Circle())
                                    .padding())
                        } else {
                            Circle()
                                .accentColor(.blue)
                                .frame(width: getRect().width * 0.4, height: getRect().width * 0.4, alignment: .center)
                                .overlay(Image(uiImage: pickedImage!)
                                    .resizable()
                                    .frame(width: getRect().width * 0.4 - 10, height: getRect().width * 0.4 - 10)
                                    .clipShape(Circle())
                                    .padding())
                        }
                    }
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

                VStack {
                    HStack {
                        Text("New user details")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        Text("Please enter the following details for a more personalized experience.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding(.leading)
                }.padding(.vertical)

                VStack {
                    RDTextField(placeholder: "First name", text: $vm.newUser.standardGivenName.toUnwrapped(defaultValue: ""), imageName: "person", isSecure: false, isPicker: false)
                    RDTextField(placeholder: "Last name", text: $vm.newUser.standardFamilyName.toUnwrapped(defaultValue: ""), imageName: "person", isSecure: false, isPicker: false)
                    RDTextField(placeholder: "Year of Birth", text: $yob, imageName: "calendar", isSecure: false, isPicker: true, data: vm.yearsList, selectionIndex: self.selectionIndex)
                    RDTextField(placeholder: "Nationality", text: $vm.newUser.nationalityCode.toUnwrapped(defaultValue: ""), imageName: "flag", isSecure: false, isPicker: true, data: vm.nationsList, selectionIndex: self.selectionIndex)
                }.padding(.horizontal)

                VStack(alignment: .leading, spacing: 5) {
                    Text("Gender")
                        .font(.headline)
                    Picker(selection: $vm.newUser.sex.toUnwrapped(defaultValue: ""), label: Text(""), content: {
                        Text("Male").tag("Male")
                            .foregroundColor(Color.white)
                        Text("Female").tag("Female")
                            .foregroundColor(Color(.white))
                        Text("Other").tag("Other")
                            .foregroundColor(Color(.white))
                    })
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                }
                .padding(10)
                .background(.white.opacity(vm.newUser.sex == "" ? 0.04 : 0.12))
                .cornerRadius(12)
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 5) {
                    Text("Playing Style")
                        .font(.headline)
                    Picker(selection: $playingStyle, label: Text(""), content: {
                        Text("Left handed").tag("Left")
                            .foregroundColor(Color(.white))
                        Text("Right handed").tag("Right")
                            .foregroundColor(Color.white)
                    })
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    .onChange(of: playingStyle) { style in
                        vm.newUser.biographicalInformation = BiographicalInformation()
                        vm.newUser.biographicalInformation?.playingHand = style
                    }
                }
                .padding(10)
                .background(.white.opacity(playingStyle == "" ? 0.04 : 0.12))
                .cornerRadius(12)
                .padding(.horizontal)

                Spacer()
                Button(action: {
                    DispatchQueue.main.async {
                        vm.newUser.nationalityCode = String(vm.newUser.nationalityCode!.prefix(2))
//                        vm.userData.name = "\(vm.userData.firstName) \(vm.userData.lastName)"
                        if playingStyle != "" {
                            vm.newUser.biographicalInformation?.playingHand = playingStyle
                        }
                        vm.uploadUserData(UIImage: pickedImage) { res in
                            switch res {
                            case .success:
                                return
                            case let .failure(err):
                                self.errorMessage = err.localizedDescription
                                self.alertShown = true
                            }
                        }
                    }

                }, label: {
                    RDButton(withTitle: "Create Account")
                })
                .opacity(vm.newUser.standardGivenName != "" && vm.newUser.standardFamilyName != "" && vm.newUser.sex != "" && yob != "" && vm.newUser.nationalityCode != "" ? 1 : 0.5)
                .disabled(vm.newUser.standardGivenName != "" && vm.newUser.standardFamilyName != "" && vm.newUser.sex != "" && yob != "" && vm.newUser.nationalityCode != "" ? false : true)

            }.background(Color("bg").ignoresSafeArea(.all, edges: .all))
                .animation(startAnimate ? .easeOut : .none)

            if vm.isLoading {
                LoadingScreenView()
            }
        }.onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.startAnimate.toggle()
            }
        })
        .alert(errorMessage, isPresented: $alertShown) {
            Button("Ok") {
                alertShown = false
            }
        }
    }
}

struct Register_Preview: PreviewProvider {
    static var previews: some View {
        NewUserView(isPresented: .constant(false), vm: RegisterVM())
    }
}
