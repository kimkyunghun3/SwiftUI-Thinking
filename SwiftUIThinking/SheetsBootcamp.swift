//
//  SheetsBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/30.
//

import SwiftUI

struct SheetsBootcamp: View {

    @State var showSheet = false

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)

            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            // View마다 Sheet를 하나만 할 수 있다. 조건문으로 Sheet 2개를 상황에 따라 보여주는걸 하지마라
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
//                Text("Button")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}


struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        // 시작 point도 결정해줄 수 있다
        SheetsBootcamp()
//        SecondScreen()
    }
}
