//
//  LocationView.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/24.
//

import SwiftUI

struct LocationView: View {

    @EnvironmentObject private var vm: LocationViewModel

    var body: some View {
        List {
            ForEach(vm.location) {
                Text($0.name)
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}
