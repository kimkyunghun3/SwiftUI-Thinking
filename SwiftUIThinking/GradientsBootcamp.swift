//
//  GradientsBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/19.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                // .red
//                 시작, 끝 포인트를 정해서 원하는 곳에서 시작이나 끝을 만들 수 있다
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )

                // circle이 만들어져서 그곳에서 파장되어가는 느낌이다
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400
//                )

                // 라인이 시계방향으로 angle에 따라 나누어져서 생기게 된다
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .center,
                    angle: .degrees(18)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
