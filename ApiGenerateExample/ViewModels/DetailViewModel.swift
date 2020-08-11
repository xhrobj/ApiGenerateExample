//
//  DetailViewModel.swift
//  ApiGenerateExample
//
//

import Foundation
import Combine

final class DetailViewModel: ObservableObject {
    
    private static let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        return decoder
    }()
    
    @Published var isLoading = false
    @Published var city: City? = nil
    @Published var weatherList: [Weather] = []
    
    init() { }
    
    func openDetail(city: City) -> Void {
        self.city = city
    }
    
    func clear() -> Void {
        city = nil
        weatherList = []
    }
    
    func fetchWeatherList() -> Void {
        if isLoading {
            return
        }
        isLoading = true
        let originJsonDecoder = CodableHelper.jsonDecoder
        CodableHelper.jsonDecoder = type(of: self).jsonDecoder
        
        WeatherAPI.getWeatherListByCity(id: String(city?.id ?? 0), apiResponseQueue: DispatchQueue.main) {
            (detailRs: CityDetailRs?, error: Error?) in
            if let weatherList = detailRs?.consolidatedWeather {
                self.weatherList = weatherList
            }
            self.isLoading = false
            CodableHelper.jsonDecoder = originJsonDecoder
        }
    }
}
