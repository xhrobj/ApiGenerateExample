//
//  EuropeanCitiesViewModel.swift
//  ApiGenerateExample
//
//

import Foundation
import Combine

final class EuropeanCitiesViewModel: ObservableObject, CitiesViewModel {
    
    @Published var isLoading = false
    @Published var pageNum = 0
    @Published var cities: [City] = []
    
    let lattlongList = ["55.756950,37.614971", "48.856930,2.341200", "51.506321,-0.12714"]
}
