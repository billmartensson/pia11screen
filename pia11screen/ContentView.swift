//
//  ContentView.swift
//  pia11screen
//
//  Created by Bill Martensson on 2022-12-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                
                NavigationLink(destination: ReadmoreView()) {
                    
                    Text("klicka här")
                }

                NavigationLink(destination: Text("Sida 2")) {
                    
                    Text("Gå sida 2")
                }

                NavigationLink(destination: Text("Sida 3")) {
                    
                    Text("Gå sida 3")
                }

            }
            
            Text("Start")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
