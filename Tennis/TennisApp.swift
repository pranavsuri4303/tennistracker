//
//  TennisApp.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import SwiftUI
import Firebase

@main
struct TennisApp: App {
    
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
// Intializing FIrebase...

class Delegate : NSObject, UIApplicationDelegate{
    // 1.1 Create the manager

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print(Auth.auth().currentUser?.uid)
        return true
    }

    
}
