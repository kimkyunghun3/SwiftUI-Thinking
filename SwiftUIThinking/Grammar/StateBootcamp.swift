//
//  StateBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct StateBootcamp: View {

    // 변수로 바뀔 가능성 있으므로 계속 지켜봐라!
    @State var backgroundColor: Color = .green
    @State var myTitle = "My Title"
    @State var count = 0

    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        count += 1
                    }

                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "BUTTON 2 was pressed"
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
