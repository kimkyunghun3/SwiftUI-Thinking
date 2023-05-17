//
//  SpacerBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            Spacer()
//                .frame(width: 10)
//                .background(.orange)

            Rectangle()
                .frame(height: 55)
        }
//        .background(.yellow)

//        HStack(spacing: 0) {
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            // frame 내에서 늘릴 수 있는 공간 채운다
////            Spacer()
////                .frame(height: 10)
////                .background(.orange)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }

    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
