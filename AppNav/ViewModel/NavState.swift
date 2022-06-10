//
//  NavState.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import Foundation
import SwiftUI

class NavState: ObservableObject {
    
    @Published var navType: NavigationType = .oldNavLink
    @Published var destination: Destination = .imageView
    
}

enum NavigationType: String, CaseIterable, Hashable {
    
    case oldNavLink = "Old Navigation Link"
    case oldPrgNav = "Old Programatic Navigation"
    case newNavLink = "New Navigation Link"
    case newNavPath = "New Navigation Path"
    case simpleEnum = "Generic Enum Navigation"
    
}


extension View {
    
    @ViewBuilder
    func navType(_ navType: NavigationType) -> some View {
        switch navType {
        case .oldNavLink:
            NavigationView {
                self
            }
        case .oldPrgNav:
            NavigationView {
                self
            }
            
        case .newNavLink:
            NavigationStack{
                self
            }
            
        case .newNavPath:
            NavigationStack {
                self
            }
        case .simpleEnum:
            VStack {
                self
            }
            
        }
        
    }
}


enum Destination: String, CaseIterable, Hashable {
    case imageView
    case activityView
    case shapesView
    case mediaView
    case profileView
    case formView
    case signUpView
}


extension View {
    
    @ViewBuilder
    func destination(_ dest: Destination) -> some View {
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
