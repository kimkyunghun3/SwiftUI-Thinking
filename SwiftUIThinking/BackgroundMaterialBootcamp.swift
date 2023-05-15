//
//  BackgroundMaterialBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 30, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.bar)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("metamong")
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
