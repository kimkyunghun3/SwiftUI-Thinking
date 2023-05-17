//
//  AnimationBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated = false

    var body: some View {
        VStack {
            Button("Button") {
                // Animation 으로 시작해서 명확하게 애니메이션임을 적는다
                    isAnimated.toggle()
            }

            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    // count를 정한다, autoreverse 는 거꾸로도 돌아갈지 여부 파악
                    Animation.default.repeatCount(5, autoreverses: false)

                        // 무한으로 반복한다
                    // Animation.default.repeatForever(autoreverses: true)

                )
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
