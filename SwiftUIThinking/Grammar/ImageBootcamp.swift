//
//  ImageBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/19.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("metamong")
        // 원하는 칼라로 바꿔주지만 이제 글씨가 아니라 이미지형태면 이미지가 사라진다.
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
//            .clipped()
        // 이걸 통해서 clipped도 되며 코너radius도 함께 정할 수 있다
            .cornerRadius(150)

        //clip의 모양을 결정해줄 수 있다.
            .clipShape(
                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
            )

    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
