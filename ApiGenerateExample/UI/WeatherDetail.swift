//
//  WeatherDetail.swift
//  ApiGenerateExample
//
//

import SwiftUI

struct WeatherDetail: View {
    var dateValue: String
    var cityName: String
    var weather: Weather
    
    private func makeText(_ value: Double) -> String {
        String(value.rounded(.down))
    }
    
    var body: some View {
        VStack {
            NavBar(label: cityName, font: .body)
            Text("\(dateValue) \(cityName)")
                .font(.largeTitle)
                .padding(.bottom)
            VStack {
                HStack {
                    Text("Weather state")
                    Spacer()
                    Text(self.weather.weatherStateName)
                }.padding(.horizontal)
                Divider()
            }
            VStack {
                HStack {
                    Text("Weather state abbreaviate")
                    Spacer()
                    Text(self.weather.weatherStateAbbr)
                }.padding(.horizontal)
                Divider()
            }
            VStack {
                HStack {
                    Text("Wind direction")
                    Spacer()
                    Text(makeText(self.weather.windDirection))
                }.padding(.horizontal)
                Divider()
            }
            VStack {
                HStack {
                    Text("Temperature")
                    Spacer()
                    Text(makeText(self.weather.theTemp))
                }.padding(.horizontal)
                Divider()
            }
            HStack {
                Text("Min temperature")
                Spacer()
                Text(makeText(self.weather.minTemp))
            }.padding(.horizontal)
            Divider()
            HStack {
                Text("Max temperature")
                Spacer()
                Text(makeText(self.weather.maxTemp))
            }.padding(.horizontal)
            Spacer()
        }
    }
}
