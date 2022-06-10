//
//  DemoNavView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct DemoNavView: View {
    @EnvironmentObject var navState: NavState
    
    
    var body: some View {
        
//            TabView {
                
                HomeView()
//                    .tabItem {
//                        Label("Home", systemImage: "house")
//                    }
//
//
//
//                FeedView()
//                    .tabItem {
//                        Label("Feed", systemImage: "list.bullet")
//                    }
//
//
//
//
//                SettingsView()
//                    .tabItem {
//                        Label("Settings", systemImage: "gear")
//                    }
//            }
            
        
    }
}

struct DemoNavView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        DemoNavView()
            .environmentObject(navState)
    }
}


