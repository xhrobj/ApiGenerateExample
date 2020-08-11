//
//  Collections+isLast.swift
//  ApiGenerateExample
//
//

import Foundation

extension RandomAccessCollection where Self.Element: Identifiable {
    func isLast(_ element: Element) -> Bool {
        if self.isEmpty {
            return false
        }
        
        guard let elementIndex = lastIndex(where: {
            AnyHashable($0.id) == AnyHashable(element.id)
        }) else {
            return false
        }
        
        return distance(from: elementIndex, to: endIndex) == 1
    }
}
