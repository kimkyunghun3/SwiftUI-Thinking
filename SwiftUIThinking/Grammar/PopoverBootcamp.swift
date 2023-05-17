//
//  PopoverBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/30.
//

import SwiftUI

struct PopoverBootcamp: View {

    @State var showNewScreen = false

    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)

            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()

                }
                .font(.largeTitle)
                Spacer()
            }

            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }

            // METHOD 2 - TRANSITION
            // dynamic하게 동작할 수 있다

//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)

            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {

    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)

            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
