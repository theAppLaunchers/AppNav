//
//  FeedView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct FeedView: View {
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

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
