//
//  ColorBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/19.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
        // iPhone에서 primary는 기본 검정 컬러다 하지만, 이건 light 모드 기준이고
        // 다크모드를 하게되면 이것이 white가 된다
//            .fill(.primary)
        // 시스템 칼라는 아이폰의 백그라운드 칼라와 매치가 되기 떄문에 사용하기 편하다
        // light 모드면 light gray 느낌이고 dark 모드면 light drak gray로 바뀐다
//            .fill(Color(UIColor.secondarySystemBackground))

        // 에셋 사용해서 칼라 커스텀칼라 설정한다
            .fill(Color("CustomColor"))
            .frame(width: 300, height: 200)
        // 그림자 설정
//            .shadow(radius: 10)
        // x와 y로 위치 설정해줄 수 있다
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -10, y: -20)

    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
