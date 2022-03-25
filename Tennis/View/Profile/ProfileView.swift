//
//  ProfileView().swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import Firebase
import SwiftUI

struct ProfileView: View {
    @Binding var showMenu: Bool
    @Binding var currentTab: CurrentTab
    @AppStorage("status") var logged = false
    @ObservedObject var sliderMenueVM = DownloadedProfileImage.shared
    @ObservedObject var vm = ProfileVM()
    @State private var goToSettings = false
    
    var body: some View {
        VStack {
            RDHeader(title: currentTab.rawValue,
                     leftBarButton: RDBadgeButton(systemImageTitle: "line.horizontal.3",
                                                   action: { showMenu.toggle() }),
                     rightBarButton: RDBadgeButton(systemImageTitle: "gear",
                                                  action: { goToSettings.toggle() }))
                .fullScreenCover(isPresented: $goToSettings,
                                 content: { ProfileSettings(profileSettingsPresented: $goToSettings,
                                                            vm: vm)})

            
            ScrollView(.vertical, showsIndicators: false, content: {
                GeometryReader { reader in
                    // Type 2 Parollax....
                    if reader.frame(in: .global).minY > -480 {
                        if let profileImage = sliderMenueVM.profileImage {
                            Image(uiImage: profileImage)
                                .resizable()
                                .padding(.top, 50)
                                .aspectRatio(contentMode: .fill)
                                // moving View Up....
                                .offset(y: -reader.frame(in: .global).minY)
                                // going to add parallax effect....
                                .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)
                            
                        } else {
                            Image("\(vm.gender)")
                                .resizable()
                                .padding(.top, 50)
                                .aspectRatio(contentMode: .fill)
                                // moving View Up....
                                .offset(y: -reader.frame(in: .global).minY)
                                // going to add parallax effect....
                                .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)
                        }
                    }
                }
                .frame(height: 400)
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("\(Auth.auth().currentUser?.displayName ?? "")")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("Male")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.top, 5)
                    }
                    Divider()
                        .foregroundColor(.white)
                        .frame(height: 15, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Text("Current String")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                    Divider()
                        .foregroundColor(.white)
                        .frame(height: 15, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("Latest Match")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                    HStack {
                        Text("Outcome")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 25)
                .padding(.horizontal)
                .background(Color("bg"))
                .cornerRadius(20)
                .offset(y: -10)
                .edgesIgnoringSafeArea(.horizontal)
            })
            .edgesIgnoringSafeArea(.all)
            .background(Color("bg").edgesIgnoringSafeArea(.all))
        }
//                .edgesIgnoringSafeArea(.all)
        .background(Color("bg").edgesIgnoringSafeArea(.all))
        //        .onAppear(perform: {
        //            print("Shown")
        //            SliderMenueVM.init().loadImageFromStorage()
        //        })
        
        .onAppear(perform: {
            if DownloadedProfileImage.shared.profileImage == nil {
                sliderMenueVM.loadImageFromStorageWithBiggerSize()
            }
        })
    }
}

// struct ProfileView_Preview : PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
// }
