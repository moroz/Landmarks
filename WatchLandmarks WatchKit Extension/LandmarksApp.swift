//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Karol Moroz on 12/06/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
