//
//  ToggleBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct ToggleBootcamp: View {

    @State var toggleIsOn = false

    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)

            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change status")
                }
                .toggleStyle(.switch).tint(.red)

            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
