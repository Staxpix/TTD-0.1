//
//  DecodeJSON.swift
//  TTD_Test
//
//  Created by Daniel Enning on 25.03.21.
//

import Foundation
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the Data
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Kaputt")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Voll im Arsch")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Hier geht gar nix")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}


