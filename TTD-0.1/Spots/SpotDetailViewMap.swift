//
//  SpotDetailViewMap.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 23.04.21.
//

import SwiftUI
import MapKit

struct SpotDetailViewMap: View {
    
    var coordinates: CLLocationCoordinate2D
    
    var spotName: String
    
    let locationsSpots : [Spots] = Bundle.main.decode("Spots.json")
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    @State private var regionSpots: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 51.264654, longitude: 6.733010)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.5)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    
    var body: some View {
        Map(coordinateRegion: $regionSpots, annotationItems: locationsSpots, annotationContent: {
            item in

            MapAnnotation(coordinate: coordinates) {
                MapAnnotationView(spotName: spotName)
            }
            
        })// End Map
    }
}
//
//struct SpotDetailViewMap_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotDetailViewMap()
//    }
//}
