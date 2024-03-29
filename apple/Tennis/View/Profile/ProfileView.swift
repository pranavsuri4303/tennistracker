//
//  ProfileView().swift
//  Tennis
//
//  Created by Pranav Suri on 3/2/21.
//

import CachedAsyncImage
import Firebase
import SwiftUI

struct ProfileView: View {
    @AppStorage("status") var logged = false
    @EnvironmentObject var vm: RDBaseViewVM
    @State private var goToSettings = false

    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                GeometryReader { reader in
                    // Type 2 Parollax....
                    if reader.frame(in: .global).minY > -480 {
                        if let imageURL = vm.userData?.imagePath {
                            CachedAsyncImage(url: URL(string: imageURL)) { Image in
                                Image
                                    .resizable()
                                    .padding(.top, 90)
                                    .aspectRatio(contentMode: .fill)
                                    // moving View Up....
                                    .offset(y: -reader.frame(in: .global).minY)
                                    // going to add parallax effect....
                                    .frame(width: getRect().width, height: reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480)

                            } placeholder: {
                                ProgressView()
                            }
                        } else {
                            Image("\(vm.userData?.gender ?? "")")
                                .resizable()
                                .padding(.top, 90)
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
                        Text("\(vm.userData?.firstName ?? "")")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(vm.userData?.gender ?? "")")
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
                .offset(y: 55)
                .edgesIgnoringSafeArea(.horizontal)
            }
        }
        .frame(width: getRect().width, height: getRect().height)
        .background(Color("bg"))
    }
}
