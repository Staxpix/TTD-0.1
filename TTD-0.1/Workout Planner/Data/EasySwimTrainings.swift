//
//  EasySwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct EasySwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityEasySwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityEasySwimTrainings {
    var short : String
    var long : String
}


var allEasySwims : [EasySwimTrainings] = [

EasySwimTrainings(warmUp: "200m einschwimmen", main: "10x 50m Sprints", coolDown: "200m ausschwimmen"),
    
EasySwimTrainings(warmUp: "300m einschwimmen", main: "15x 50m Sprints", coolDown: "300m ausschwimmen"),
    
EasySwimTrainings(warmUp: "400m einschwimmen", main: "20x 50 Sprints", coolDown: "400m ausschwimmen")


]
