# NavigationTabViewApp

Hiding the TabBar when navigating into a subview

![Alt text](https://media.giphy.com/media/LIUse2tXFBrUVHgyKD/giphy.gif)



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
            .background(Color.black)
            .accentColor(.black)
            .navigationBarTitle(Text(navigationBarTitle), displayMode: .inline)
            .navigationBarHidden(navigationBarHidden)
            .navigationBarItems(leading: navigationBarLeadingItems, trailing: navigationBarTrailingItems)
        }
