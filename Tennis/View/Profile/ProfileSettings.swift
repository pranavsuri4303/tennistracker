//
//  ProfileSettings.swift
//  Tennis
//
//  Created by Pranav Suri on 20/7/21.
//

import SwiftUI
import ImagePickerView

struct ProfileSettings: View {
    @Binding var profileSettingsPresented : Bool
    @ObservedObject var vm : ProfileVM
    
    // Image
    @State var isImagePickerViewPresented = false
    @State var pickedImage: UIImage? = nil
    
    var body: some View {
        ZStack{
            Color("bg")
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    RDHeader(title: "Settings")
                    HStack{
                        RDBadgeButton(systemImageTitle: "xmark.circle",
                                          action:{ profileSettingsPresented.toggle()})
                        Spacer()
                        RDBadgeButton(systemImageTitle: "pencil.circle",
                                          action:{ print("pencil.circle Button Pressed") })

                    }.padding(.horizontal)
                }.padding(.bottom, 10)

                HStack{
                    GeometryReader{ geo in
                        ZStack{
                            Circle()
                                .frame(width: geo.size.width*0.3 + 10 ,height: geo.size.width*0.3 + 10, alignment: .center)
                                .foregroundColor(.white.opacity(0.3))
                                .overlay(Image("Male")
                                            .resizable()
                                            .frame(width: geo.size.width*0.3 ,height: geo.size.width*0.3, alignment: .center)
                                            .aspectRatio(contentMode: .fit))
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                
                                    Button(action: {
                                        isImagePickerViewPresented.toggle()
                                    }, label: {
                                        Image(systemName: "pencil.circle.fill")
                                            .foregroundColor(.blue)
                                            .font(.title)
                                    })
                                        .sheet(isPresented: $isImagePickerViewPresented) {
                                            UIImagePickerView(allowsEditing: true, delegate: UIImagePickerView.Delegate(isPresented: $isImagePickerViewPresented, didCancel: { (uiImagePickerController) in
                                                print("Did Cancel: \(uiImagePickerController)")
                                            }, didSelect: { (result) in
                                                let uiImagePickerController = result.picker
                                                let image = result.image
                                                print("Did Select image: \(image) from \(uiImagePickerController)")
                                                pickedImage = image
                                            }))
                                        }
                                    
                                }
                            }
                        }.frame(width: geo.size.width*0.3 + 10 ,height: geo.size.width*0.3 + 10, alignment: .center)
                    }
                    
                }.padding(.horizontal)
                Spacer()
            }
            
            
        }
    }
}

