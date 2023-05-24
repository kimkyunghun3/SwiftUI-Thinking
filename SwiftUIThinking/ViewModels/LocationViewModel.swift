//
//  LocationViewModel.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/24.
//

import Foundation

class LocationViewModel: ObservableObject {

    @Published var location: [Location]

    init() {
        let locations = LocationsDataService.locations
        self.location = locations
    }
}
