//
//  ReadmoreView.swift
//  pia11screen
//
//  Created by Bill Martensson on 2022-12-12.
//

import SwiftUI

struct ReadmoreView: View {
    var body: some View {
        
        VStack {
            Text("Här läsa mer...")
            
            
            NavigationLink(destination: Text("Läs ännu mer")) {
                Text("Mera länk")
            }
        }
        
        
    }
}

struct ReadmoreView_Previews: PreviewProvider {
    static var previews: some View {
        ReadmoreView()
    }
}
