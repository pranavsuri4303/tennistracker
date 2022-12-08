//
//  TennisApp.swift
//  TennisWatch WatchKit Extension
//
//  Created by Pranav Suri on 5/12/22.
//

import SwiftUI

@main
struct TennisApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
