//
//  VorstandModel.swift
//  TTD_Test
//
//  Created by Daniel Enning on 25.03.21.
//

import Foundation

struct Persons: Codable, Identifiable {
    let id: String
    let name: String
    let status: String
    let image: String
}
