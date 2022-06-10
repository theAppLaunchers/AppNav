//
//  ContentView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navState: NavState
    var body: some View {
        HomeView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .bottomTrailing){
                HStack {
                    viewText
                    Menu {
                        
                        ForEach(NavigationType.allCases, id: \.self) { type in
                            Button(type.rawValue){
                                navState.navType = type
                            }
                        }
                        
                    } label: {
                        Image(systemName: "list.bullet")
                            .padding()
                            .background(.thinMaterial)
                            .cornerRadius(4)
                            .clipShape(Circle())
                    }.padding()
                        
                       
                }.offset(y: 25)
            }
    }
    
    var viewText: some View {
        VStack(alignment: .trailing, spacing: 8){
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
//            Text("\(navState.destination.rawValue)")
        }.font(.title3.bold())
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        ContentView()
            .environmentObject(navState)
    }
}
