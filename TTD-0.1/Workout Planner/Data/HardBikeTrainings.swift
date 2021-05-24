//
//  HardBikeTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct HardBikeTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityHardBikeTrainings(short: "", long: "")
    
    
    
}

struct IntensityHardBikeTrainings {
    var short : String
    var long : String
}


var allHardBikes : [HardBikeTrainings] = [

    HardBikeTrainings(warmUp: "30 Minuten einrollen, leichte Sprints oder Steigungen mit etwas Druck fahren", main: "60% eurer geplanten Renndistanz @85% FTP-Wert.", coolDown: "locker nach Hause."),
    
    HardBikeTrainings(warmUp: "Lockere Fahrt zum Spot 'Race-Sim um Allrather Höhe'.", main: "Die Route 4x richtig hart abfahren. 5 Minuten Pause zwischen den Durchgängen. Die Steigungen richtig hart. Versucht sie Abfahrten windschnittig und rollend zu nehmen (Erhohlung).", coolDown: "Easy nach Hause fahren. Nach solchen Einheiten am besten direkter Weg."),
    
    HardBikeTrainings(warmUp: "Gut zu fahrende Straße suchen, z.B. L361 oder Hamsterrad Krefeld.", main: "20 Minuten GA1 - 20 Minuten @80 % - 10 Minuten @FTP-Wert - 10 Minuten @ 80%. Kurz/Olympisch: 2 Durchgänge, dafür aber mit 110%FTP-Wert! Mittel/Lang: Jeweils + 10 Minuten draufpacken: Mittel dann ebenfalls Durchgänge. Lang: 3 Durchgänge. Bei dieser Einheit bitte mit Rennverpflegung!", coolDown: "Easy nach Hause")


]
