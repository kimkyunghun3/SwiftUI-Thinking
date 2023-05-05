//
//  OnAppearBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/05.
//

import SwiftUI

struct OnAppearBootcamp: View {

    @State var myText = "Start text."
    @State var count = 0

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                // 만들어질떄마다 하나씩 증가
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                // 5초후에 문구가 바뀐다
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            // 다 보인 다음에 text가 바뀐다
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
