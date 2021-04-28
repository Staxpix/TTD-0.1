//
//  runEasyModel.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import Foundation

struct RunEasy: Codable, Identifiable {
    var id: String
    var workoutName: String
    var warmup: String
    var main: String
    var cooldown: String
}
