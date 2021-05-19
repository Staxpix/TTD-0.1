//
//  MediumBikeTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct MediumBikeTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumBikeTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumBikeTrainings {
    var short : String
    var long : String
}


var allMediumBikes : [MediumBikeTrainings] = [

    MediumBikeTrainings(warmUp: "Bike200m einschwimmen", main: "10x 50m Sprints", coolDown: "200m ausschwimmen"),
    
    MediumBikeTrainings(warmUp: "Bike300m einschwimmen", main: "15x 50m Sprints", coolDown: "300m ausschwimmen"),
    
    MediumBikeTrainings(warmUp: "Bike400m einschwimmen", main: "20x 50 Sprints", coolDown: "400m ausschwimmen")


]
