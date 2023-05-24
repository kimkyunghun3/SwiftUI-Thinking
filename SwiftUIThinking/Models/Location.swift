//
//  Location.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String

    // Identifiable
    var id: String {
        // name = "Colosseum"
        // cityName: "Rome"
        // id = "ColosseumRome"
        name + cityName
    }
}
