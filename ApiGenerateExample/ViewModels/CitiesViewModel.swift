//
//  CitiesViewModel.swift
//  ApiGenerateExample
//
//

import Foundation

protocol Fetchable: AnyObject {
    var isLoading: Bool { get set }
    func fetch() -> Void
}

protocol CitiesViewModel: Fetchable {
    var cities: [City] { get set }
    var pageNum: Int { get set }
    var isLastPage: Bool { get }
    var lattlongList: [String] { get }
    var lattlong: String? { get }
}

extension CitiesViewModel {
    var lattlong: String? {
        (1...lattlongList.count).contains(pageNum) ? lattlongList[pageNum - 1] : nil
    }
    
    var isLastPage: Bool {
        pageNum == lattlongList.count
    }
    
    func fetch() -> Void {
        if isLoading || isLastPage {
            return
        }
        pageNum += 1
        guard let lattlong = lattlong else {
            return
        }
        isLoading = true
        CitiesAPI.findCitiesByLattlong(lattlong: lattlong, apiResponseQueue: DispatchQueue.main) {
            (cities: [City]?, error: Error?) in
            if let cities = cities {
                self.cities.append(contentsOf: cities)
            }
            self.isLoading = false
        }
    }
}
