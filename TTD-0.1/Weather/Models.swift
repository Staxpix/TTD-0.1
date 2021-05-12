//
//  Models.swift
//  WeatherTest
//
//  Created by Daniel Enning on 06.05.21.
//

import Foundation

struct WeatherModel: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
    let wind: Wind
}


struct Weather: Codable {
    let id: Int
    let main, weatherDescription, icon: String
    
    enum CodingKeys: String, CodingKey {
            case id, main
            case weatherDescription = "description"
            case icon
}
}

struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
    }
}

struct Wind: Codable {
    let speed: Double
    let deg: Int
}
