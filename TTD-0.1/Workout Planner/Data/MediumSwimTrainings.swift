//
//  MediumSwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct MediumSwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumSwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumSwimTrainings {
    var short : String
    var long : String
}


var allMediumSwims : [MediumSwimTrainings] = [

MediumSwimTrainings(warmUp: "500m einschwimmen", main: "10x 100m Sprints", coolDown: "500m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "600m einschwimmen", main: "15x 100m Sprints", coolDown: "600m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "700m einschwimmen", main: "20x 100m Sprints", coolDown: "700m ausschwimmen")


]
