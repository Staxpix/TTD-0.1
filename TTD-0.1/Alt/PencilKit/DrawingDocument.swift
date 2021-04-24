//
//  DrawingDocument.swift
//  TTD_Test
//
//  Created by Daniel Enning on 15.04.21.
//

import Foundation

struct DrawingDocument: Identifiable {
    let id: UUID
    var data: Data
    var name: String
}
