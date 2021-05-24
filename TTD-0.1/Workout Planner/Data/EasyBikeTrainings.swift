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

EasyBikeTrainings(warmUp: "", main: "Ausfahrt zur Allrather Höhe", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zur L361", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zum Sender Langenberg", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zum Hamsterrad Krefeld + Rhein-Runde", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zum Angerbachtal", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zu den Jüchener Wellen", coolDown: ""),
    
    EasyBikeTrainings(warmUp: "", main: "Ausfahrt zum Terra Nova Speedway", coolDown: "")
    

    



]
