//
//  LocationView.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/24.
//

import SwiftUI
import MapKit

struct LocationView: View {

    @EnvironmentObject private var vm: LocationViewModel

    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}
