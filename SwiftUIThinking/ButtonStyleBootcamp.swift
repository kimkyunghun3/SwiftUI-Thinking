//
//  ButtonStyleBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {

            Button {

            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                
            }
            .controlSize(.small)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .buttonStyle(.borderedProminent)

            Button("Title") {

            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
//            .buttonStyle(.borderedProminent)
            .buttonStyle(.bordered)

            Button("Button Title") {

            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
//            .buttonStyle(.borderedProminent)
            .buttonStyle(.borderedProminent)

            Button("Button Title") {

            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.borderedProminent)
            .buttonStyle(.borderless)

            Button("Button Title") {

            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
//            .buttonStyle(.borderedProminent)
            .buttonStyle(.plain)
        }
        .padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
