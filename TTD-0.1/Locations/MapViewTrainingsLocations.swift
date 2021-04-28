//
//  MapViewTrainingsLocations.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI
import MapKit
import UIKit


struct MapViewTrainingsLocations: View {
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    private var locations = [
        Locations(name: "Rheinbad", coordinate: .init(latitude: 51.264654, longitude: 6.733010)),
        Locations(name: "Flatiron Building", coordinate: .init(latitude: 40.741112, longitude: -73.989723)),
        Locations(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
        ]
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 51.264654, longitude: 6.733010)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    
    
    
    var body: some View {
        
//        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true)
        
        NavigationView {
            Map(coordinateRegion: $region, annotationItems: locations) { item in
                
                MapAnnotation(coordinate: item.coordinate)
                {
                    MapAnnotationView(spotName: item.name)
                        
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
            
            
        
    }
}



struct Locations: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    // hier von region rein
}

struct MapViewTrainingsLocations_Previews: PreviewProvider {
    static var previews: some View {
        MapViewTrainingsLocations()
    }
}


