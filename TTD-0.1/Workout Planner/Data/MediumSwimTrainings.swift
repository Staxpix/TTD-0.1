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

MediumSwimTrainings(warmUp: "400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "500m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "Lockeres Einschwimmen mit mind. 6x 50m Technikübungen.", main: "Wichtig: nach jeder Bahn max. 5 Sekunden Pause: 16x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 12x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 8x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 4x 25m Sprint @ 95% - 1 Bahn locker nach Belieben -", coolDown: "200m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "600m Technik mit Kraul-Abschlag, Ente & Beine.", main: "Paddles an. 8x 50m @100 % - 4x 100m @ 90% - 2x 400m @85%, jede 4. Bahn anziehen.", coolDown: "400m Lagen ausschwimmen")


]
