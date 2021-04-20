//
//  NewsModel.swift
//  TTD_Test
//
//  Created by Daniel Enning on 05.04.21.
//

import Foundation

struct News: Codable, Identifiable {
    var id: String
    var headline: String
    var date: String
    var autor: String
    var image: String
    var textPreview: String
    var text: String
}
