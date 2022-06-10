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
        DemoNavView()
            .overlay(alignment: .bottomTrailing){
                Menu {
                    
                    ForEach(NavigationType.allCases, id: \.self) { type in
                        Button(type.rawValue){
                            navState.navType = type
                        }
                    }
                    
                } label: {
                    Image(systemName: "house")
                        .padding()
                        .background(.thinMaterial)
                        .cornerRadius(4)
                        .clipShape(Circle())
                }.padding()
                    .offset(y: -50)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        ContentView()
            .environmentObject(navState)
    }
}
