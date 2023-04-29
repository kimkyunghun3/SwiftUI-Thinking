//
//  ButtonBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct ButtonBootcamp: View {

    @State var title = "This is my title"

    var body: some View {
        VStack(spacing: 20) {
            Text(title)

            Button("Press me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)

            Button {
                self.title = "BUTTON #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)

                    )
            }

            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }

            Button {
                self.title = "Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
