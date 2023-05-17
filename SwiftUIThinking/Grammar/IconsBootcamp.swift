//
//  IconsBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/19.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
        // 프레임에 맞게 비율에 맞게 resize해준다
//            .resizable()
        // 프레임에서 만들 수 있는 최대의 이미지 크기로 만들어준다.(조금 넘어갈수 있음)
//            .aspectRatio(contentMode: .fit)
        // fit을 사용하면 프레임 안에서 최대의 이미지 크기로 만들어준다


        // 위에 것과 같은 역할을 한다
//            .scaledToFit()
//            .scaledToFill()

//            .font(.caption)
//            .font(.system(size: 200))
        // 보여주는 모드를 original 색상으로 한다. 원래 색상으로 표현해주는 것
            .renderingMode(.original)

//            .foregroundColor(.green)
            .frame(width: 300, height: 300)
        // 프레임 넘어가는 부분은 자른다!
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
