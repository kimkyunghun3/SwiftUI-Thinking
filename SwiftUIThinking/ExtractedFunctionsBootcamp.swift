//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {

    @State var backgroundColor = Color.pink

    var body: some View {
        ZStack {
            // backgrround
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            // content
            contentLayer
        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }

    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
