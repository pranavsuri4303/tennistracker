//
//  TennisApp.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import Firebase
import GoogleSignIn
import SwiftUI

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

class Delegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print(Auth.auth().currentUser?.uid)
        return true
    }

    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any])
        -> Bool
    {
        GIDSignIn.sharedInstance.handle(url)
    }
}
