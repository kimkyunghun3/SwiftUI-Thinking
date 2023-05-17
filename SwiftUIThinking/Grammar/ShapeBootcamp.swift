//
//  ShapeBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/19.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
//        Ellipse()
//            .fill(.green)
//            .frame(width: 200, height: 100)
//
        Capsule(style: .continuous)
            .frame(width: 200, height: 100)
//
//        Rectangle()
//        RoundedRectangle(cornerRadius: 50)
//            .trim(from: 0.4, to: 1.0)
//            .frame(width: 300, height: 200)




        Circle()
//            .fill(.blue)
//         동일하게 색깔을 바꾸어준다.
//            .foregroundColor(.pink)
        // 안에 비어있고 선만 있다
//            .stroke()
//            .stroke(.blue)
//            .strokeBorder(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
        // 원을 원하는 만큼 잘라서 할 수 있다
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)



    }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
