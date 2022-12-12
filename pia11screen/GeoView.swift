//
//  GeoView.swift
//  pia11screen
//
//  Created by Bill Martensson on 2022-12-12.
//

import SwiftUI

struct GeoView: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 0) {
                        Text("Left")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: geometry.size.width * 0.33)
                            .background(.yellow)
                        Text("Right")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: geometry.size.width * 0.67)
                            .background(.orange)
                    }
                
                Text("BILD")
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .background(.red)
                
                if(UIDevice.current.userInterfaceIdiom == .pad) {
                    Text("Hej iPad")
                } else {
                    Text("Hej iPhone")
                }
                
            }
            

        }
        
    }
}

struct GeoView_Previews: PreviewProvider {
    static var previews: some View {
        GeoView()
    }
}
