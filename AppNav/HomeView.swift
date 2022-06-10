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
        }.navType(navState.navType)
    }
}

struct HomeView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        HomeView()
            .environmentObject(navState)
    }
}
