//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {

        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .purple, radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )


//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )

//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )




//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
////                .red
//            )
////            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
////                    .fill(.red)
//                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
