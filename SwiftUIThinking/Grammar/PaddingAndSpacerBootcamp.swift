//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)

            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)

        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                        y: 10)
        )
        .padding(.horizontal, 10)
//        .background(.green)

//            .frame(maxWidth: .infinity, alignment: .leading)
////            .background(.red)
//            .padding(.leading, 20)

//            .background(.yellow)
//            // 기본값 10이다 4방향, dynamic하게 처리해줄 수 있다
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(.blue)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
