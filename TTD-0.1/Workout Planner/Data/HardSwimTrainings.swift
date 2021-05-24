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

    HardSwimTrainings(warmUp: "400m einschwimmen. Dann 400m Technik-Übungen. Zeit lassen & saubere Ausfühung.", main: "6x 400m Grundlage", coolDown: "400m locker ausschwimmen"),
    
    HardSwimTrainings(warmUp: "Nach Gefühl einschwimmen, mind. 600m", main: "6x 200m @ 85%. 2x 800m GA-1, wobei jede 4 Bahn deutlich angezogen wird auf 90%.", coolDown: "300m ausschwimmen"),
    
    HardSwimTrainings(warmUp: "400 einschwimmen und 4x25 kurze Sprints.", main: "3x Pyramide: 50m - 100m - 200m - 400m - 800m - 400m - 200m - 100m - 50m. Für Langdistanzler: Die 800m mit Paddles", coolDown: "400m ausschwimmen")


]
