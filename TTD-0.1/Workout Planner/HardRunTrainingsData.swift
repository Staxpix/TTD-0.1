//
//  HardRunTrainingsData.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.05.21.
//

import Foundation

struct HardRunTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityHardRunTrainings(short: "", long: "")
    
    
    
}

struct IntensityHardRunTrainings {
    var short : String
    var long : String
}

var allHardRuns : [HardRunTrainings] = [

    HardRunTrainings(warmUp: "w11111", main: "m11111", coolDown: "c1111"),
    HardRunTrainings(warmUp: "w2222", main: "m2222", coolDown: "c2222"),
    HardRunTrainings(warmUp: "w3333", main: "m3333", coolDown: "c3333"),
    HardRunTrainings(warmUp: "w4444", main: "m44444", coolDown: "c4444"),
    HardRunTrainings(warmUp: "w5555", main: "m5555", coolDown: "c6666")

]
