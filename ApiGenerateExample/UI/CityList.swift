//
//  CityList.swift
//  ApiGenerateExample
//
//

import SwiftUI

struct CityList: View {
    
    @EnvironmentObject var americanViewModel: AmericanCitiesViewModel
    @EnvironmentObject var europeanViewModel: EuropeanCitiesViewModel
    @EnvironmentObject var router: Router
    
    var body: some View {
        let viewModel: CitiesViewModel = router.selectedSegment == .america ? americanViewModel : europeanViewModel
        let cities = viewModel.cities
        
        return VStack {
            List (cities) { city in
                    PushView(destination: CityDetail(city: city)) {
                        CityRow(city: city, viewModel: viewModel)
                    }
            }
            if viewModel.isLoading {
                CellLoader()
            }
        }
    }
}

struct CityRow: View {
    
    var city: City
    var viewModel: CitiesViewModel
    
    var body: some View {
        
        Text(city.title)
            .onAppear() {
                if self.viewModel.cities.isLast(self.city) {
                    self.viewModel.fetch()
                }
        }
    }
}
