//
//  OtherView.swift
//  pia11screen
//
//  Created by Bill Martensson on 2022-12-12.
//

import SwiftUI

struct OtherView: View {
    
    @Environment(\.horizontalSizeClass) var hsizeClass
    @Environment(\.verticalSizeClass) var vsizeClass

    
    var body: some View {
        
        
        if(hsizeClass == .compact && vsizeClass == .regular)
        {
            VStack {
                Text("Hello, World!")
                .frame(width: 100, height: 100)
                .background(.red)

                Text("Mera text")
                .frame(width: 100, height: 100)
                .background(.green)

            }
            Text("Stående telefon")
        }
        if(hsizeClass == .compact && vsizeClass == .compact)
        {
            HStack {
                Text("Hello, World!")
                .frame(width: 100, height: 100)
                .background(.red)

                Text("Mera text")
                .frame(width: 100, height: 100)
                .background(.green)

            }
            Text("Liggande telefon")
        }
        if(hsizeClass == .regular && vsizeClass == .regular)
        {
            VStack {
                GeometryReader { geometry in
                    VStack {
                        Text("Hello, World!")
                            .frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            .background(.red)
                        
                        if(geometry.size.width > geometry.size.height)
                        {
                            Text("Liggande")
                        } else {
                            Text("Stående")
                        }
                        
                        Text("Nu är det iPad")
                    }
                }
            }
        }
        
            
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
