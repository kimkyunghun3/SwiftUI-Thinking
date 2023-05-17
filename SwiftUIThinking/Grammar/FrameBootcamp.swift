//
//  FrameBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/20.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
        // Frame를 여러개로 해서 화면을 구상할 수 있다
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
        // 이렇게 하면 정적인 숫자로 가지고 있어서 맨끝으로 Frame을 옮기기 어렵다
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

//            .background(.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
