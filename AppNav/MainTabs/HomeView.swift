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
            switch navState.navType {
            case .oldNavLink:
                Text(NavigationType.oldNavLink.rawValue)
            case .oldPrgNav:
                Text(NavigationType.oldPrgNav.rawValue)
            case .newNavLink:
                Text(NavigationType.newNavLink.rawValue)
            case .newNavPath:
                Text(NavigationType.newNavPath.rawValue)
            case .simpleEnum:
                Text(NavigationType.simpleEnum.rawValue)
            }
        }.navType(navState.navType)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
