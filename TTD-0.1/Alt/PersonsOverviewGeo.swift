//
//  PersonsOverviewGeo.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 14.04.21.
//

import SwiftUI

struct PersonsOverviewGeo: View {
    var body: some View {
        
        GeometryReader { geo in
            
            VStack(alignment: .center) {
                Spacer()
                ScrollView(.horizontal) {
                    HStack(spacing: 60) {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        Spacer()
                        PersonsCardView(name: "fjdka", status: "fdkalö", image: "oli")
                            .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.7, alignment: .center)
                            
                        
                        PersonsCardView(name: "fjdka", status: "fdkalö", image: "oli")
                            .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.7, alignment: .center)
                        
                        PersonsCardView(name: "fjdka", status: "fdkalö", image: "oli")
                            .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.7, alignment: .center)
                        
                        
                        Spacer()
                    }
                }
                Spacer()
            }
            
            
        }
        
        
    }

    }


struct PersonsOverviewGeo_Previews: PreviewProvider {
    static var previews: some View {
        PersonsOverviewGeo()
    }
}
