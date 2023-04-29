//
//  TransitionBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct TransitionBootcamp: View {

    @State var showView = false

    var body: some View {
        ZStack(alignment: .bottom) {

            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                // 사라지는 것을 애니메이션으로 설정
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                // 크기가 커지고 작아지는 것을 애니메이션으로 설정
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                // move를 통해 모형이 움직이는 방향을 정할 수 있다(그 방향으로 나간다)
//                    .transition(.move(edge: .bottom))
                // slide 방식으로 들어와서 나간다.
//                    .transition(.slide)
//                    .opacity(showView ? 1.0 : 0.0)
                // 2가지 순서대로 음직이도록 한다. 들어오는 것과 나가는 것을 결정할 수 있다.
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut))
                    )
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
