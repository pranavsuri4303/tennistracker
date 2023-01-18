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
    @AppStorage("status") var logged = false
    @AppStorage("additionalInfoRequired") var additionalInfoRequired = false
    var body: some Scene {
        WindowGroup {
            if logged && !additionalInfoRequired{
                RDBaseView()
            }
            else {
                if additionalInfoRequired {
                    NewUserView(isPresented: $additionalInfoRequired, additionalInfoRequired: $additionalInfoRequired, vm: RegisterVM())
                } else {
                    LoginView(additionalInfoRequired: $additionalInfoRequired)
                }
            }
        }
    }
}

class Delegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        var filePath: String!
        #if DEBUG
            print("[FIREBASE] Development mode.")
            filePath = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist", inDirectory: "Debug")
        #else
            print("[FIREBASE] Production mode.")
            filePath = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist", inDirectory: "Release")
        #endif
        let options = FirebaseOptions(contentsOfFile: filePath)!
        FirebaseApp.configure(options: options)
        return true
    }

    func application(_: UIApplication, open url: URL,
                     options _: [UIApplication.OpenURLOptionsKey: Any])
        -> Bool
    {
        GIDSignIn.sharedInstance.handle(url)
    }
}
