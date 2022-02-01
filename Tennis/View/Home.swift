//
//  Home.swift
//  Login_Face_ID
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI
import Firebase
import Combine

class DownloadedProfileImage : ObservableObject {
    @Published  var image  : UIImage? = nil
    @Published var profileImage : UIImage? = nil
    static let shared = DownloadedProfileImage()
    
    func loadImageFromStorageWithBiggerSize(){
        
        if let userID = Auth.auth().currentUser?.uid , profileImage == nil{
            let imagePath = userID + "/2x/profileImage.png"
            Storage.storage().reference().child(imagePath).getData(maxSize: .max) { (data, error) in
                print("Downloaded Data")
                data.publisher
                    .compactMap {$0}
                    .map { data in
                        UIImage(data: data)
                    }
                    .assign(to: \.profileImage, on: self)
                
            }
            
        }
        
    }
}

struct Home: View {
    var body: some View {
        ViewSwitcher()
        //            .onAppear(perform: {
        //                print("Shown")
        //                SliderMenueVM.init().loadImageFromStorage()
        //            })
    }
}

struct HomePage : View {
    var body: some View{
        Color.red
    }
}

struct ViewSwitcher : View {
    
    // for future use...
    
    // to hide view...
    @State var currentSelectedMenuView : SlideMenuView = .profile
    @GestureState var gestureState : CGFloat = 0
    @ObservedObject var isSliderMenuPresented = SliderMenuPresentationManager.shared
    
    var body: some View{
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            switch currentSelectedMenuView {
            case .string : StringsListView()
            case .profile : ProfileView()
            case .dashboard : DashboardView()
            case .players : PlayersSearchView()
            case .matches : MatchesHistoryView()
            case .friends: FriendsListView()
            case .clubs: ClubsView()
            case .none: HomePage()
            }
            
            
            
            Button(action: {
                // opening menu,..
                
                isSliderMenuPresented.isPresented = true
                
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.title2)
                    .foregroundColor(Color("green"))
            }
            //            .clipped()
            .padding(.horizontal)
            .padding(.top, 5)
            
            
            if isSliderMenuPresented.isPresented {
                SlideMenu(currentSelectedView: $currentSelectedMenuView)
                    .transition(AnyTransition.sliderMenueTransition.animation(.easeIn))
                    .animation(.easeIn)
                    .zIndex(1)
                    .offset(x: gestureState)
                    .gesture(
                        DragGesture()
                            .updating($gestureState, body: { (value, state, _) in
                                print(value.translation.width)
                                if value.translation.width < 1 {
                                    state = value.translation.width
                                }
                            })
                            .onEnded({ (value) in
                                if value.translation.width < -100 {
                                    isSliderMenuPresented.isPresented = false
                                }
                            })
                    )
                
                
            }
            
            
        }
        
        
        
    }
    
}

struct SlideMenu : View {
    @Binding var currentSelectedView : SlideMenuView
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @ObservedObject var sliderMenueVM = DownloadedProfileImage.shared
    //    let sliderVM = SliderMenueVM()
    @AppStorage("status") var logged = false
    
    
    
    var body: some View {
        
        ZStack{
            
            HStack(spacing: 0){
                
                VStack(alignment: .leading){
                    VStack(alignment: .center){
                        ZStack{
                            Circle()
                                .foregroundColor(Color(.white).opacity(0.3))
                                .frame(width: 80, height: 80, alignment: .center)
                            
                            if let profileImage = sliderMenueVM.image {
                                Image(uiImage: profileImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 70, height: 70, alignment: .center)
                            }else {
                                Image("logo")
                                    .resizable()
                                    .frame(width: 60, height: 60, alignment: .center)
                            }
                        }.frame(alignment: .center)
                    }
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("\(Auth.auth().currentUser?.displayName ?? "User")")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Divider()
                            .frame(height: 10)
                    }
                    Spacer(minLength: 0)
                    
                    VStack(alignment: .leading){
                        
                        // Menu Buttons....
                        
                        ForEach(menuButtons , id : \.self){menu in
                            MenuButton(currentSelectedHome: $currentSelectedView, slideMenuItem: menu , title : menu.rawValue)
                        }
                        
                        Spacer()
                        Button(action: {
                            SliderMenuPresentationManager.shared.isPresented = false
                            try! Auth.auth().signOut()
                            withAnimation{logged = false}
                            DownloadedProfileImage.shared.image = nil
                            DownloadedProfileImage.shared.profileImage = nil
                        }) {
                            Text("Log out")
                                .foregroundColor(Color("green"))
                                .padding(.bottom)
                        }
                        .padding(.top,20)
                    }
                    
                    
                }
                .padding(.horizontal,20)
                // since vertical edges are ignored....
                .padding(.top,edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom,edges!.bottom == 0 ? 15 : edges?.bottom)
                // default width...
                .frame(width: UIScreen.main.bounds.width - 90)
                .background(Color("bg").ignoresSafeArea(.all, edges: .all))
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            }
            
            
        }
        
    }
}


var menuButtons : [SlideMenuView] {
    var all = SlideMenuView.allCases
    all.removeLast()
    return all
}


struct MenuButton : View {
    
    @Binding var currentSelectedHome : SlideMenuView
    
    var slideMenuItem : SlideMenuView
    var title : String
    
    
    
    var body: some View{
        
        HStack(spacing: 15){
            
            // both title and image names are same....
            Image(title)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24, alignment: .center)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.gray)
            
            
            
            Text(title)
                .foregroundColor(.white)
            
            
            Spacer(minLength: 0)
        }
        .padding(.vertical,12)
        .onTapGesture {
            currentSelectedHome = slideMenuItem
            
            SliderMenuPresentationManager.shared.isPresented = false
            
        }
        
    }
}

struct SliderMenuTransition : AnimatableModifier {
    var xOffset : CGFloat
    var backgroundAlpha : Double
    
    var animatableData: AnimatablePair<CGFloat , Double> {
        get {
            return .init(xOffset, backgroundAlpha)
        }
        set {
            xOffset = newValue.first
            backgroundAlpha = newValue.second
            
        }
    }
    
    
    func body(content: Content) -> some View {
        ZStack{
            if backgroundAlpha > 0.04 {
                Color.gray.opacity(backgroundAlpha)
                    .ignoresSafeArea()
                    .onTapGesture {
                        Just(false)
                            
                            .sink { (bool) in
                                SliderMenuPresentationManager.shared.isPresented = bool
                            }
                    }
            }
            content.offset(x: xOffset)
        }
        
        
        
    }
}


class SliderMenuPresentationManager : ObservableObject {
    static let shared = SliderMenuPresentationManager()
    @Published var isPresented = false
    @Published var backgroundOpacity = false
}
