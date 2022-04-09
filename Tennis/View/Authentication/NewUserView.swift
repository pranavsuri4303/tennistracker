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
    @State var nations = Locale.isoRegionCodes.compactMap { Locale.current.localizedString(forRegionCode: $0) }.sorted { $0 < $1 }
    @State var yob = ""
    // Image
    @State var isImagePickerViewPresented = false
    @State var pickedImage: UIImage? = nil
    @State var newUserViewPresented = false
    @State private var alertShown = false
    @State private var errorMessage = ""
    

    // Creating an array of YOBs with range 100 yrs
    @State var years = Array(Calendar.current.component(.year, from: Date()) - 100 ... Calendar.current.component(.year, from: Date())).map { String($0) }
    
    var body: some View {
//        VStack{
//            Text("New User View")
//        }
        ZStack {
            VStack {
                Button {
                    isImagePickerViewPresented = true
                } label: {
                    VStack {
                        if pickedImage == nil {
                            Circle()
                                .accentColor(.blue)
                                .frame(width: 210, height: 210, alignment: .center)
                                .overlay(Image("Male")
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(100)
                                    .padding())

                        } else {
                            Circle()
                                .accentColor(.blue)
                                .frame(width: 210, height: 210, alignment: .center)
                                .overlay(Image(uiImage: pickedImage!)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(100)
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
                HStack {
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text("New user details")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        Text("Please enter the following details for a more personalized experience.")
                            .foregroundColor(Color.white.opacity(0.5))
                    })
                    .padding(.bottom)
                }
                .padding()
                RDTextField(placeholder: "First name", text: $vm.userData.firstName, imageName: "person", isSecure: false, isPicker: false)
                RDTextField(placeholder: "Last name", text: $vm.userData.lastName, imageName: "person", isSecure: false, isPicker: false)

                RDTextField(placeholder: "Year of Birth", text: $yob, imageName: "calendar", isSecure: false, isPicker: true, data: years, selectionIndex: self.selectionIndex)
                RDTextField(placeholder: "Select your country", text: $vm.userData.nationality, imageName: "flag", isSecure: false, isPicker: true, data: nations, selectionIndex: self.selectionIndex)

                Picker(selection: $vm.userData.gender, label: Text(""), content: {
                    Text("Male").tag("Male")
                        .foregroundColor(Color.white)
                    Text("Female").foregroundColor(Color(.white)).tag("Female")
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding(.all)
                Spacer()
                HStack(spacing: 15) {
                    Button(action: {
                        DispatchQueue.main.async {
                            vm.uploadUserData(UIImage: pickedImage) { res in
                                switch res {
                                case .success:
                                    return
                                case .failure(let err):
                                    self.errorMessage = err.localizedDescription
                                    self.alertShown = true
                                }
                            }
                        }
                        
                    }, label: {
                        RDButton(withTitle: "Create Account")
                    })
                        .opacity(vm.userData.firstName != "" && vm.userData.lastName != "" && vm.userData.gender != "" && yob != "" && vm.userData.nationality != "" ? 1 : 0.5)
                        .disabled(vm.userData.firstName != "" && vm.userData.lastName != "" && vm.userData.gender != "" && yob != "" && vm.userData.nationality != "" ? false : true)
                }
                .padding(.vertical)

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
    }
}

struct Register_Preview: PreviewProvider {
    static var previews: some View {
        NewUserView(isPresented: .constant(false), vm: RegisterVM())
    }
}
