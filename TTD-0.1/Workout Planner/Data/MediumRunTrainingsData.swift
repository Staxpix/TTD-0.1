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

    MediumRunTrainings(warmUp: "Dehnen und Lauf-ABC. 4 Runden locker einlaufen. Dann 2 Runden mit leichten Steigerungen und eine Runde mit einem kurzen Sprints", main: "4 x 100m Sprint, 4 x 200m @ 110% - 4 x 400m @ 100%", coolDown: "3 Runden locker auslaufen", intensity: IntensityMediumRunTrainings(short: "1 Minute", long: "2 Minuten")),
    
    MediumRunTrainings(warmUp: "10 Minuten Lauf-ABC. Dehnübungen und dann 5 Runden locker einlaufen in GA1-Tempo. Kurz mal anziehen, aber keine Sprints", main: "8 x 400m @ 120 %. Dazwischen 400m Trab-Pause. Nicht stehen bleiben.", coolDown: "4 Runden locker auslaufen", intensity: IntensityMediumRunTrainings(short: "2 Minute", long: "4 Minuten")),
    
    MediumRunTrainings(warmUp: "3 Runden locker einlaufen. 2 Runden mit leichten Steigerungen, ca. 100m. 2 weitere Runden einlaufen", main: "On/Off-Lauf: 12 Runden jeweils 200m schnell @ 130% und 200m locker GA-1.", coolDown: "3 Runden auslaufen", intensity: IntensityMediumRunTrainings(short: "3 Minute", long: "6 Minuten")),
    
    MediumRunTrainings(warmUp: "Dehnen und Lauf-ABC. 3 Runden locker einlaufen. Dann 1 Runden mit leichten Steigerungen und eine Runde mit einem kurzen Sprints", main: "10 x 100m @ all out. Umdrehen, die 100m locker zurück tippeln. Direkt umdrehen und wieder starten. Wichtig: probiert die Zeiten konstant zu halten. Den ersten lieber zu langsam also zu schnell", coolDown: "2 Runden sehr leichtes auslaufen. Kein(!) Dehnen, da Muskulatur stark beansprucht durch die Sprints.", intensity: IntensityMediumRunTrainings(short: "2 Minute", long: "4 Minuten"))



]
