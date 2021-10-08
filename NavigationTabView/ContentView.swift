//
//  ContentView.swift
//  NavigationTabView
//
//  Created by macstyle on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 1
    
    var body: some View {
        
        NavigationView {
            
            TabView(selection: $tabSelection) {
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        
                        Text("Profile")
                    }
                    .tag(1)
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.circle.fill")
                        Text("Settings")
                    }
                    .tag(2)
            }
            .accentColor(.black)
            // global, for all child views
            .navigationBarTitle(Text(navigationBarTitle), displayMode: .inline)
            .navigationBarHidden(navigationBarHidden)
            .navigationBarItems(leading: navigationBarLeadingItems, trailing: navigationBarTrailingItems)
        }
    }
}
private extension ContentView {
    var navigationBarTitle: String {
        tabSelection == 1 ? "Profile" : "Settings"
    }
    
    var navigationBarHidden: Bool {
        tabSelection == 3
    }
    
    @ViewBuilder
    var navigationBarLeadingItems: some View {
        if tabSelection == 1 {
            Image(systemName: "globe.asia.australia.fill")
        }
    }
    
    @ViewBuilder
    var navigationBarTrailingItems: some View {
        if tabSelection == 1 {
            Image(systemName: "megaphone.fill")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
