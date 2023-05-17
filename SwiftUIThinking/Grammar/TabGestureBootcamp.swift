//
//  TabGestureBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/06.
//

import SwiftUI

struct TabGestureBootcamp: View {

    @State var isSelected = false

    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }

            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
            // Button과 동일하게 동작하지만 버튼누르는것처럼 눌러진 느낌은 없다
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            // 액션되기전에 몇번 tap 해야하느지 count -> 2번연속눌러야 동작
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            Spacer()
        }
        .padding(40)
    }
}

struct TabGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureBootcamp()
    }
}
