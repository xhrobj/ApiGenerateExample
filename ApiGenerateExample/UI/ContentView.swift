//
//  ContentView.swift
//  ApiGenerateExample
//
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @EnvironmentObject var americanViewModel: AmericanCitiesViewModel
    @EnvironmentObject var europeanViewModel: EuropeanCitiesViewModel
    @EnvironmentObject var router: Router
    
    var body: some View {
        let viewModel: CitiesViewModel = router.selectedSegment == .america ? americanViewModel : europeanViewModel
        
        return VStack {
            if viewModel.isLoading && viewModel.cities.isEmpty {
                FullScreenLoader()
            } else {
                WeatherContainer()
            }
        }
        .onAppear {
            self.americanViewModel.fetch()
            self.europeanViewModel.fetch()
        }
    }
}

struct WeatherContainer: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Picker("Options", selection: $router.selectedSegment) {
                Text("America").tag(SegmentTag.america)
                Text("Europe").tag(SegmentTag.europe)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            NavigationView {
                CityList()
                    .navigationBarTitle(Text("Cities"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
