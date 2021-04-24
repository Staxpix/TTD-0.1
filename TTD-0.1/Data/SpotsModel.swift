//
//  SpotsModel.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 22.04.21.
//

import Foundation
import MapKit

struct Spots: Codable, Identifiable {
    
    var id: Int
    var headline: String
    var distance: String
    var disciplin: String
    var image: String
    var shortInfo: String
    var latitude: Double
    var longitude: Double
    var text: String
    
    var locationsSpots: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
