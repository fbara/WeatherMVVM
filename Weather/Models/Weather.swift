//
//  Weather.swift
//  Weather
//
//  Created by Frank Bara on 7/12/24.
//

import Foundation

struct Weather: Decodable {
    let main: Main
    let weather: [WeatherDetail]
    let name: String
    
    struct Main: Decodable {
        let temp: Double
        let humidity: Double
        
    }
    
    struct WeatherDetail: Decodable {
        let description: String
        let icon: String
    }
}

// MARK: - Weather
//struct Weather: Codable {
//    let coord: Coord
//    let weather: [WeatherElement]
//    let base: String
//    let main: Main
//    let visibility: Int
//    let wind: Wind
//    let clouds: Clouds
//    let dt: Int
//    let sys: Sys
//    let timezone, id: Int
//    let name: String
//    let cod: Int
//}
//
//// MARK: - Clouds
//struct Clouds: Codable {
//    let all: Int
//}
//
//// MARK: - Coord
//struct Coord: Codable {
//    let lon, lat: Double
//}
//
//// MARK: - Main
//struct Main: Codable {
//    let temp, feelsLike, tempMin, tempMax: Double
//    let pressure, humidity, seaLevel, grndLevel: Int
//
//    enum CodingKeys: String, CodingKey {
//        case temp
//        case feelsLike = "feels_like"
//        case tempMin = "temp_min"
//        case tempMax = "temp_max"
//        case pressure, humidity
//        case seaLevel = "sea_level"
//        case grndLevel = "grnd_level"
//    }
//}
//
//// MARK: - Sys
//struct Sys: Codable {
//    let type, id: Int
//    let country: String
//    let sunrise, sunset: Int
//}
//
//// MARK: - WeatherElement
//struct WeatherElement: Codable {
//    let id: Int
//    let main, description, icon: String
//}
//
//// MARK: - Wind
//struct Wind: Codable {
//    let speed: Double
//    let deg: Int
//    let gust: Double
//}
