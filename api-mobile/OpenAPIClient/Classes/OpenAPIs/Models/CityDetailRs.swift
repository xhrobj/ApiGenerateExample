//
// CityDetailRs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CityDetailRs: Codable { 


    public var consolidatedWeather: [Weather]

    public init(consolidatedWeather: [Weather]) {
        self.consolidatedWeather = consolidatedWeather
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case consolidatedWeather = "consolidated_weather"
    }

}
