//
//  RegisterView.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var vm = RegisterVM()
    
    @Binding var registerViewPresented : Bool
    
    @State var newUserViewPresented = false
    
    
    
    
    @State var startAnimate = false
    var body: some View {

            ZStack{
                
                
                VStack{
                    Spacer(minLength: 0)
                    
                    Image("signup")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //Dynamic Frame...
                        .padding([.leading, .bottom, .trailing],35)
                        .padding()
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 12, content: {
                            
                            Text("Create Account")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Please sign up to create account")
                                .foregroundColor(Color(.white).opacity(0.5))
                        })
                        .padding(.bottom)
                        
                        Spacer(minLength: 0)
                    }
                    .padding()
                    .padding(.leading,15)
                    
                    RDTextField(title: "EMAIL", text: $vm.email, imageName: "envelope", isSecure: false)

                    
                    RDTextField(title: "PASSWORD", text: $vm.password, imageName: "lock", isSecure: true)

                    RDButton(withTitle: "REGISTER", performAction: { newUserViewPresented.toggle() })
                        .opacity(vm.email != "" && vm.password != "" && (vm.gender != "Male" || vm.gender != "Female") ? 1 : 0.5)
                        .disabled(vm.email != "" && vm.password != "" && (vm.gender != "Male" || vm.gender != "Female") ? false : true)
                        .alert(isPresented: $vm.alert, content: {
                            Alert(title: Text("Error"), message: Text(vm.alertMsg), dismissButton: .destructive(Text("Ok")))
                        })
                        .padding(.top)
                    
                    Button(action: {}, label: {
                        Image("googleLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40, alignment: .center)
                        
                    })
                    .padding(.all)
                    
                    
                    // SignUp...
                    
                    
                    HStack(spacing: 5){
                        
                        Text("Already have an account? ")
                            .foregroundColor(Color(.white).opacity(0.6))
                        
                        Button("Login"){
                            registerViewPresented.toggle()
                        }
                        .foregroundColor(Color("green"))
                        
                    }
                    
                    .padding(.vertical)
                }
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                .animation(startAnimate ? .easeOut : .none)
                
                if vm.isLoading{
                    LoadingScreenView()
                }
                
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.startAnimate.toggle()
                }
            })
            .fullScreenCover(isPresented: $newUserViewPresented, content: {
                NewUserView(isPresented : $newUserViewPresented, vm: vm)
            })
         
            
            
        }
        
        
    }




