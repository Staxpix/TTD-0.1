//
//  EasyBikeTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct EasyBikeTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityEasyBikeTrainings(short: "", long: "")
    
    
    
}

struct IntensityEasyBikeTrainings {
    var short : String
    var long : String
}


var allEasyBikes : [EasyBikeTrainings] = [

EasyBikeTrainings(warmUp: "Bike200m einschwimmen", main: "10x 50m Sprints", coolDown: "200m ausschwimmen"),
    
EasyBikeTrainings(warmUp: "Bike300m einschwimmen", main: "15x 50m Sprints", coolDown: "300m ausschwimmen"),
    
EasyBikeTrainings(warmUp: "Bike400m einschwimmen", main: "20x 50 Sprints", coolDown: "400m ausschwimmen")


]
