//
//  TextfieldBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct TextfieldBootcamp: View {

    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {

        NavigationStack {
            VStack {
                // placeholder와 값을 넣을 수 있다
                TextField("Type something here...", text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)

                Button {
                    // 조건에 맞으면 저장할 수 있도록 한다
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                // 조건에 맞지 않으면 버튼이 비활성화된다
                .disabled(!textIsAppropriate())

                // 데이터를 Text로 만들어준다.
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }

    func textIsAppropriate() -> Bool {
        // 글자수 제한하는 방법
        if textFieldText.count >= 3 {
            return true
        }

        return false
    }

    // 배열에 저장하고 TextField를 초기화해준다
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
