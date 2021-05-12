//
//  SpotsList.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 22.04.21.
//

import SwiftUI

struct SpotsList: View {
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    var body: some View {
        
        
        NavigationView {
            List(spots, id: \.id) { spots in
                
                NavigationLink(
                    destination: SpotDetailView( headline: spots.headline, distance: spots.distance, disciplin: spots.disciplin, image: spots.image, shortInfo: spots.shortInfo, latitude: spots.latitude, longitude: spots.longitude, text: spots.text, locationsSpots: spots.locationsSpots, index: 1),
                    label: {
                        SpotsListCell(headline: spots.headline, disciplin: spots.disciplin, image: spots.image, shortInfo: spots.shortInfo)
                    })
                
                
            }
            .padding(4)
            .listStyle(PlainListStyle())
            .navigationBarTitle("Spots")
            .navigationBarTitleDisplayMode(.inline)
            .animation(Animation.linear(duration: 0.4))
            .animation(Animation.easeOut(duration: 0.5))
        }.navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        
        
   
        }
    }


struct SpotsList_Previews: PreviewProvider {
    static var previews: some View {
        SpotsList()
    }
}
