//
//  TextEditorBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct TextEditorBootcamp: View {

    @State var textEditorText = "This is the starting text."
    @State var savedText = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                // 배경안바뀐다 이렇게하면
//                    .background(Color.red)
                // 요렇게 해야 배경이 바뀐다
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                Button {
                    // 저장버튼 누른 것을 Text로 만든다
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)

                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
