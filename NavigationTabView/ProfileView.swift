//
//  FirstView.swift
//  NavigationTabView
//
//  Created by macstyle on 10/7/21.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        NavigationLink(destination: Text("subview page")) {
            
            ZStack {
                
                Color.yellow
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Profile View")
                        .foregroundColor(Color.black)
                        .padding()
                    
                    Text("Go to subview")
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color.red)
                        .clipShape(Capsule())
                    
                }
                
            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
