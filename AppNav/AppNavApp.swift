//
//  AppNavApp.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

@main
struct AppNavApp: App {
    @StateObject var navState = NavState()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navState)
        }
    }
}
