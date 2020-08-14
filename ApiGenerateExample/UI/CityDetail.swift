//
//  CityDetail.swift
//  ApiGenerateExample
//

import SwiftUI

struct CityDetail: View {
    
    @EnvironmentObject var viewModel: DetailViewModel
    var city: City
    
    var body: some View {
        VStack {
            Text(self.city.title)
            if viewModel.isLoading && viewModel.weatherList.isEmpty {
                Spacer()
                FullScreenLoader()
                Spacer()
            } else {
                List(viewModel.weatherList) { weather in
                    WeatherRow(city: self.city, weather: weather)
                }
            }
        }
        .onAppear {
            self.viewModel.openDetail(city: self.city)
            self.viewModel.fetchWeatherList()
        }
        .onDisappear {
            self.viewModel.clear()
        }
    }
}

struct WeatherRow: View {
    
    static var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var city: City
    var weather: Weather
    
    var body: some View {
        let dateValue = type(of: self).formatter.string(from: weather.applicableDate)
        
        return NavigationLink(destination: WeatherDetail(title: "\(dateValue) \(city.title)", weather: weather)) {
            Text(dateValue)
            Spacer()
            Text(weather.weatherStateName)
        }
        .navigationBarTitle(self.city.title)
    }
}
