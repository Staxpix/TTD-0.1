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

EasySwimTrainings(warmUp: "200m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "5x 100m mit jeweils 25m Scheibenwischer, 25m Ente, 25m schaufeln, 25m Kraul. Dann 5x 100m Lagen. Dann 5x 100m: 25m Technikübung nach Belieben - 25m Sprinten - 50m weiter kraulen", coolDown: "200m ausschwimmen"),
    
EasySwimTrainings(warmUp: "300m einschwimmen, kein Kraul.", main: "6x 50m Beine mit Brett. 6x 50m Arme mit Pullbuoy. 4x 50m Kraul-Abschlag vorne. 4x 50m Kraul-Abschlag hinten. 2x400m locker, aber sehr sauber kraulen.", coolDown: "300m ausschwimmen"),
    
EasySwimTrainings(warmUp: "400m Lagen, locker, jeweils nach 25m wechseln", main: "Mit Flossen: 8x 50m Beine. Dabei jeder 2. Durchgang mit Dampf. Flossen anlassen und dann in Seitwärtslage: 1 Arm zeigt nach vorne, 1 Arm zeigt aus dem Wasser. Nach 25m Seite wechseln. Insg. auch 8 Durchgänge hier. Flossen bleiben dran + Paddles: 6x 200m", coolDown: "400m ausschwimmen")


]
