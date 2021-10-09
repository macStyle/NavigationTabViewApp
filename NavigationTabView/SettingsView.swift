//
//  SecondView.swift
//  NavigationTabView
//
//  Created by macstyle on 10/7/21.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            Text("Settings View")
                .foregroundColor(Color.black)
                .padding()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
