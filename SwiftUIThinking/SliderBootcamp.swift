//
//  SliderBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/05.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundColor(color)
            // 기본 Slider 방식
//            Slider(value: $sliderValue)
            // 범위를 지정해주는 Slider 방식
//            Slider(value: $sliderValue, in: 1...5)
            // 범위 지정 + slider 보여지는 범위 고정 지정
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)


            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                // 최소 지정
                minimumValueLabel: {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                },
                // 최대 지정
                maximumValueLabel: {
                    Text("5")
                },
                // 값이 바뀔떄마다 할 행동 지정
                onEditingChanged: { _ in
                    color = .green
                }
            )
                .tint(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
