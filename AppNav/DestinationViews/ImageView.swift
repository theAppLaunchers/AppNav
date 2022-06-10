//
//  ImageView.swift
//  AppNav
//
//  Created by Mark Evans on 6/9/22.
//

import SwiftUI

struct ImageView: View {
    @EnvironmentObject var navState: NavState
    
    @State private var navigate: Bool = false
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 20) {
                Text("ImageView")
                
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .background(.thinMaterial)
                    .cornerRadius(30)
                    .shadow(radius: 5)
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 30)
                VStack(alignment: .leading, spacing: 8){
                    
                    HStack(alignment: .center, spacing: 5){
                        
                        Text("NavigationLink(\"ActivityView\"){\n    ActivityView()\n}" )
                            .font(.system(size: 8, weight: .regular, design: .monospaced))
                            .padding(10)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title.bold())
                        NavigationLink("Activity View") {
                            ActivityView()
                        }
                        
                    }
                    
                    HStack(alignment: .center, spacing: 5) {
                        
                        Text("NavigationLink(destination: ActivityView()){ \n    Text(\"ActivityView\")\n}" )
                            .font(.system(size: 8, weight: .regular, design: .monospaced))
                            .padding(10)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title.bold())
                        
                        
                        NavigationLink(destination: ActivityView()) {
                            Text("Activity View")
                        }
                    }
                    
                    HStack(alignment: .center, spacing: 5) {
                        
                        Text("NavigationLink(destination: ActivityView(), isActive: $navigate) {\n    EmptyView()\n}" )
                            .font(.system(size: 8, weight: .regular, design: .monospaced))
                            .padding(10)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                            .overlay(alignment: .topTrailing) {
                                Text("D")
                                    .bold()
                                    .padding(5)
                                    .background(.red.gradient)
                                    .clipShape(Circle())
                                    .offset(x: 8, y: -8)
                            }
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title.bold())
                        
                        Button("Activity View"){
                            navigate.toggle()
                        }.background(
                            NavigationLink(destination: ActivityView(), isActive: $navigate) {
                                EmptyView()
                            }
                        )
                    }
                    
                    
                    HStack(alignment: .center, spacing: 5) {
                        
                        Text("NavigationLink(value: Destination.activityView){ \n    Text(\"Activity View\")\n}" )
                            .font(.system(size: 7, weight: .regular, design: .monospaced))
                            .padding(10)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                            .overlay(alignment: .topTrailing) {
                                Text("N")
                                    .bold()
                                    .padding(5)
                                    .background(.green.gradient)
                                    .clipShape(Circle())
                                    .offset(x: 8, y: -8)
                            }
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title.bold())
                        
                        
                        NavigationLink(value: Destination.activityView){
                            Text("Activity View")
                        }
                    }
                    
                    HStack(alignment: .center, spacing: 5) {
                        
                        Text("Button(\"Activity View\") {\n    path.append(Destination.acitivityView)\n}")
                            .font(.system(size: 7, weight: .regular, design: .monospaced))
                            .padding(10)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                            .overlay(alignment: .topTrailing) {
                                Text("N")
                                    .bold()
                                    .padding(5)
                                    .background(.green.gradient)
                                    .clipShape(Circle())
                                    .offset(x: 8, y: -8)
                            }
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title.bold())
                        
                        Button("Activity View"){
                            navState.navPath.append(Destination.activityView)
                        }
                    }
                    
                    
                }.padding(5)
                
                    .navigationDestination(for: Destination.self) { dest in
                        DestinationSwitcher(dest: dest)
                    }
                
            }.navigationTitle("Image View")
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static let navState = NavState()
    static var previews: some View {
        ImageView()
            .environmentObject(navState)
    }
}
