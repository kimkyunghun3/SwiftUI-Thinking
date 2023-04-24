//
//  ScrollViewBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }

//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
