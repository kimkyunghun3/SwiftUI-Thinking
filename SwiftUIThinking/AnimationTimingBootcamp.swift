//
//  AnimationTimingBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct AnimationTimingBootcamp: View {

    @State var isAnimating = false
    let timing: Double = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }

            // MARK: - response 테스트

//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    // 몇초에 걸쳐서 작동할지 결정하는 부분
//                    response: 0.5,
//                    dampingFraction: 0.7,
//                    blendDuration: 1.0
//                ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    response: 1.0,
//                    dampingFraction: 0.7,
//                    blendDuration: 1.0
//                ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    response: 0.0,
//                    dampingFraction: 0.7,
//                    blendDuration: 1.0
//                ))

            // MARK: - dampingFraction 테스트

//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    response: 0.5,
//                    dampingFraction: 0.0,
//                    blendDuration: 1.0
//                ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    response: 0.5,
//                    dampingFraction: 0.5,
//                    blendDuration: 1.0
//                ))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(.spring(
//                    response: 0.5,
//                    dampingFraction: 1.0,
//                    blendDuration: 1.0
//                ))

            // MARK: - blendDuration 테스트

//            @State private var change = false
//            @State private var secondChange = false
//            @State private var blendDuration = 1.0
//
//            var body: some View {
//                VStack(spacing: 20) {
//                    Circle()
//                        .foregroundColor(.green)
//                        .scaleEffect(change ? secondChange ? 0.1 : 0.3 : secondChange ? 0.5 : 1.0)
//                        .animation(.spring(response: 1, dampingFraction: 0.1, blendDuration: blendDuration), value: change)
//                        .animation(.spring(response: 10, dampingFraction: 1, blendDuration: blendDuration), value: secondChange)
//
//                     HStack {
//                        Image(systemName: "hare")
//                        Slider(value: $blendDuration, in: 0...2)
//                        Image(systemName: "tortoise")
//                    }.foregroundColor(.green).padding()
//
//                    Text("\(self.blendDuration)")
//
//                    Button("Change") {
//                        withAnimation{
//                            self.change.toggle()}
//                    }.font(.title)
//
//                    Button("SecondChange") {
//                        withAnimation{
//                            self.secondChange.toggle()}
//                    }.font(.title)
//                }
//            }


//                .animation(.spring())
//                .animation(Animation.linear(duration: timing))

//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct Spring_BlendDuration: View {
    @State private var change = false
    @State private var secondChange = false
    @State private var blendDuration = 1.0

    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.green)
                .scaleEffect(change ? secondChange ? 0.1 : 0.3 : secondChange ? 0.5 : 1.0)
                .animation(.spring(response: 1, dampingFraction: 0.1, blendDuration: blendDuration), value: change)
                .animation(.spring(response: 10, dampingFraction: 1, blendDuration: blendDuration), value: secondChange)

             HStack {
                Image(systemName: "hare")
                Slider(value: $blendDuration, in: 0...2)
                Image(systemName: "tortoise")
            }.foregroundColor(.green).padding()

            Text("\(self.blendDuration)")

            Button("Change") {
                withAnimation{
                    self.change.toggle()}
            }.font(.title)

            Button("SecondChange") {
                withAnimation{
                    self.secondChange.toggle()}
            }.font(.title)
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
