//
//  MediumRunTrainingsData.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.05.21.
//

import Foundation
// MEDIUM
struct MediumRunTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumRunTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumRunTrainings {
    var short : String
    var long : String
}
// Sammlung Medium
var allMediumRuns : [MediumRunTrainings] = [

    MediumRunTrainings(warmUp: "5 Minuten Lauf-ABC", main: "5x400m", coolDown: "5 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "1 Minute", long: "2 Minuten")),
    
    MediumRunTrainings(warmUp: "10 Minuten Lauf-ABC", main: "8x400m", coolDown: "10 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "2 Minute", long: "4 Minuten")),
    
    MediumRunTrainings(warmUp: "15 Minuten Lauf-ABC", main: "10x400m", coolDown: "15 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "3 Minute", long: "6 Minuten"))]
