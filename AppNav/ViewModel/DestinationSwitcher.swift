//
//  DestinationSwitcher.swift
//  AppNav
//
//  Created by Mark Evans on 6/10/22.
//

import SwiftUI

struct DestinationSwitcher: View {
    var dest: Destination
    
    var body: some View {
        
        switch dest {
        case .imageView:
            ImageView()
        case .activityView:
            ActivityView()
        case .shapesView:
            ShapesView()
        case .mediaView:
            MediaView()
        case .profileView:
            ProfileView()
        case .formView:
            FormView()
        case .signUpView:
            SignUpView()
        }
    }
}

struct DestinationSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSwitcher(dest: Destination.imageView)
    }
}
