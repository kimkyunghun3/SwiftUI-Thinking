//
//  BindingBootCamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/29.
//

import SwiftUI

struct BindingBootCamp: View {

    @State var backgroundColor = Color.green
    @State var title = "TITLE"

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text(title)
                    .foregroundColor(.white)

                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    // title의 부모뷰에만 있음
    @Binding var title: String

    // childview 에서만 사용하므로 괜찮다
    @State var buttonColor = Color.blue

    var body: some View {
        Button {
            // State로 하면 MainView 밖에 있기 때문에 사용할수 없다
            // Binding으로 엮어준다(chidview - parentview)
            backgroundColor = .orange
            buttonColor = .pink
            title =  "NEW TITLE!!!!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
