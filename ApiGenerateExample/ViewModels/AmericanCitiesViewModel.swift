//
//  AmericanCitiesViewModel.swift
//  ApiGenerateExample
//
//

import Foundation
import Combine

final class AmericanCitiesViewModel: ObservableObject, CitiesViewModel {
    
    @Published var isLoading = false
    @Published var pageNum: Int = 0
    @Published var cities: [City] = []
    
    let lattlongList = ["36.96,-122.02", "50.068,-5.316", "40.71455,-74.007118", "15,-47", "0,-30"]
}
