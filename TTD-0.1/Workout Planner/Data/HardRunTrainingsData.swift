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

    HardRunTrainings(warmUp: "Dehnen und Lockerungsübungen. 2-3km locker einlaufen. Kleine Steigerungen bis max. 100%", main: "Steigerungslauf: 2km GA1 - 2km GA2 - 2km @ 90% - 2km  100%", coolDown: "2km locker auslaufen"),
    
    HardRunTrainings(warmUp: "4km locker einlaufen", main: "Für Sprint/Olympische: 5km @ 85% // Für Mittel/Lang: 8km @ 75%", coolDown: "nach Belieben locker auslaufen"),
    
    HardRunTrainings(warmUp: "2km einlaufen. 10 Minuten Lauf-ABC. 1km weiter laufen.", main: "Fahrtspiel rein nach Gefühl: Ihr macht insg. 5 Wiederholungen: Jeweils 1km locker GA1 und dann 1km zwischen 75% und 100%. 1x 100% sollte dabei sein! ", coolDown: "2km auslaufen. Leichtes Dehnen"),
    
    HardRunTrainings(warmUp: "Dehnen, leichte Hopser-Läufe und 2km einlaufen. Bei dieser Übung bitte besonders den Bereich untere Wade und Achillessehne dehnen.", main: "Läufe an Steigungen: Sucht euch eine Steigung, die min. 200m lang ist (Tipp: Rheinkniebrücke von Norden aus kommend). 5x all out hoch, Tippelschritte runter und direkt umdrehen, also immer in Bewegung bleiben. Dann nochmal 4 Wiederholungen, wobei hier das Tempo bergauf variiert wird: 1/4 @ 80% - 1/4 @ 100% - 1/4 @ 80% - 1/4 @ 100%", coolDown: "sehr lockeres auslaufen nach belieben")
    

]
