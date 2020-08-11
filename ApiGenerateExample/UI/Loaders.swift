//
//  Loaders.swift
//  ApiGenerateExample
//
//

import SwiftUI

struct FullScreenLoader: View {

    var body: some View {
        VStack(alignment: .center) {
            ActivityIndicatorView()
        }
        .frame(height: 300)
        .frame(maxWidth: .infinity)
    }
}

struct CellLoader: View {

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Spacer()
                ActivityIndicatorView()
                Spacer()
            }
        }
        .frame(height: 44)
    }
}
