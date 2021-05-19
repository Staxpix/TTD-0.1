//
//  SpotsMapViewLinks.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 19.05.21.
//

import SwiftUI
import MapKit

struct SpotsMapViewLinks: View {
    
    let locationsSpots : [Spots] = Bundle.main.decode("Spots.json")
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    @State private var regionSpots: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 51.264654, longitude: 6.733010)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.5)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    
    
    
    
    var body: some View {


        NavigationView{
            
            Map(coordinateRegion: $regionSpots, annotationItems: locationsSpots, annotationContent: {
                item in
                
                
                MapAnnotation(coordinate: item.locationsSpots) {
                    
                    NavigationLink(
                        destination: SpotDetail(spots: item),
                        label: {
                            MapAnnotationView(spotName: item.headline)
                        })
                    
                    
                }
                
                
                
            }).navigationTitle("TTD Training-Spots")
            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)



    }
}

struct SpotsMapViewLinks_Previews: PreviewProvider {
    static var previews: some View {
        SpotsMapViewLinks()
    }
}
