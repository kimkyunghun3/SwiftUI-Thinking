//
//  TextBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/17.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        // 소문자화
        Text("Hello, World!".lowercased())
        // 대문자화
        Text("Hello, World!".uppercased())
        // 첫글자만 대문자화
        Text("Hello, World!".capitalized)


            .font(.title)
            .fontWeight(.semibold) // 동적으로 글자크기를 처리해준다
            .bold() // 현재 텍스테에 대해 bold 처리 해준다.
            .underline(true, color: Color.red) // 밑줄을 커스텀해줄 수 있다. 첫 번쨰 파라미터는 isActive로 활성화여부 파악
            .italic() // 이태릭체로 변경해준다.
            .strikethrough(true, color: Color.green) // 취소선을 커스텀해줄 수 있다.
            .font(.system(size: 24, weight: .semibold, design: .serif))

            // 글자색 변경해주는 요소
            .foregroundColor(.blue)
            // Frame의 크기를 지정해주는 요소
            // alignment는 글자가 한줄인 경우 이에 대한 왼, 오른, 가운데 정렬해주는 요소
            .frame(width: 200, height: 100, alignment: .center)
            // 글자 크기를 resize 해주는 요소 0.1 퍼센트로 줄여준다.
            .minimumScaleFactor(0.1)

            // 글자 줄마다의 간격을 조정해주는 요소로 microsoft에서 기본은 2.0이다
            .baselineOffset(50.0)

            // 각 글자간의 간격을 조정하는 요소
            .kerning(10)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
