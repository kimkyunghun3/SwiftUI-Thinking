//
//  LocationViewModel.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject {

    // All loaded locations
    @Published var location: [Location]

    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }

    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

    // Show list of locations
    @Published var showLocationsList: Bool = false

    // Show location detail via sheet
    @Published var sheetLocation: Location? = nil

    init() {
        let locations = LocationsDataService.locations
        self.location = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }

    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan
            )
        }
    }

    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
        }
    }

    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }

    func nextButtonPressed() {

        // Get the current index
        guard let currentIndex = location.firstIndex(where: { $0 == mapLocation }) else {
            print("Could not find current index in locations array! Should never happen")
            return
        }

        // Chekct if the nextIndex is valid
        let nextIndex = currentIndex + 1
        guard location.indices.contains(nextIndex) else {
            // Next index is NOT valid
            // Restart from 0
            guard let firstLocation = location.first else { return }
            showNextLocation(location: firstLocation)
            return
        }

        // Next index IS valid
        let nextLocation = location[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
