//
//  WeatherDetail.swift
//  ApiGenerateExample
//
//

import SwiftUI

struct WeatherDetail: View {
    var title: String
    var weather: Weather
    
    var body: some View {
        VStack {
            Text(title)
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
                    Text(String(self.weather.windDirection))
                }.padding(.horizontal)
                Divider()
            }
            HStack {
                Text("Temperature")
                Spacer()
                Text(String(self.weather.theTemp))
            }.padding(.horizontal)
            Divider()
            HStack {
                Text("Min temperature")
                Spacer()
                Text(String(self.weather.minTemp))
            }.padding(.horizontal)
            Divider()
            HStack {
                Text("Max temperature")
                Spacer()
                Text(String(self.weather.maxTemp))
            }.padding(.horizontal)
            Spacer()
        }
    }
}
