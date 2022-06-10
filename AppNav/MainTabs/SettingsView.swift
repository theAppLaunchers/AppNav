//
//  SettingsView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct SettingsView: View {
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
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
