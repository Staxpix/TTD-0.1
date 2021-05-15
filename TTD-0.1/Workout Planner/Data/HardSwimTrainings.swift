//
//  HardSwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct HardSwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityHardSwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityHardSwimTrainings {
    var short : String
    var long : String
}


var allHardSwims : [HardSwimTrainings] = [

    HardSwimTrainings(warmUp: "5000m einschwimmen", main: "10x 1000m Sprints", coolDown: "5000m ausschwimmen"),
    
    HardSwimTrainings(warmUp: "6000m einschwimmen", main: "15x 1000m Sprints", coolDown: "6000m ausschwimmen"),
    
    HardSwimTrainings(warmUp: "7000m einschwimmen", main: "20x 1000m Sprints", coolDown: "7000m ausschwimmen")


]
