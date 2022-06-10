//
//  HomeView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var navState: NavState
    
    var body: some View {
        VStack {
            DestinationSwitcher(dest: navState.destination)
        }.navType(navState.navType, navPath: $navState.navPath)
            .safeAreaInset(edge: .bottom) {
                VStack{
              Rectangle()
                        .fill(.green.gradient)       
                }.background(Color.green.gradient)
                .frame(height: 60)
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        HomeView()
            .environmentObject(navState)
    }
}
