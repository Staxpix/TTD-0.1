//
//  MediumBikeTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct MediumBikeTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumBikeTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumBikeTrainings {
    var short : String
    var long : String
}


var allMediumBikes : [MediumBikeTrainings] = [

    MediumBikeTrainings(warmUp: "Locker zu einer wenig befahrenen Straße fahren, z.B. Hamsterrad Krefeld, Rotterdamer Straße oder L361", main: "10x 1 Minute @ 130%", coolDown: "Locker wieder nach Hause."),
    
    MediumBikeTrainings(warmUp: "Locker zu einer wenig befahrenen Straße fahren, z.B. Hamsterrad Krefeld, Rotterdamer Straße oder L361", main: "On/Off: 40/20 Sekunden @ 140% / 70%. 3x6 Durchgänge. 12 Minuten GA-1 dazwischen.", coolDown: "Locker wieder nach Hause."),
    
    MediumBikeTrainings(warmUp: "Locker zu einer Steigung, z.B. Allrather Höhe oder Dorper weg. Weiter weg z.B. Sender Langenberg. Anstieg sollte 3-6 Minuten langes fahren ermöglichen.", main: "6x 2 Minuten Kraftausdauer, also sehr langsame Trittfrequenz @ 110%. Dann hart losprinten 30 - 60 Sekunden / all out. Umdrehen, locker runterrollen und wieder Go :-).", coolDown: "Locker wieder nach Hause.")
    
   


]
