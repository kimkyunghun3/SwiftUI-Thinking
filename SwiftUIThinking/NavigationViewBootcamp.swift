//
//  NavigationViewBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/30.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {

                // 다음 navigation 링크를 정해줄 수 있다
                NavigationLink("Hello, world!",
                               destination: MyOtherScreen())

                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("ALL Inboxes")

            // 네비타이틀로 있다가 스크롤되면 위로 옮겨진다(automatic)
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .navigationBarHidden(true)

            // deprecated 되었다
            // BarItems에 여러개 추가할 수 있다.
            .navigationBarItems(leading:
                                    HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            },

                                trailing: NavigationLink(destination: {
                MyOtherScreen()
            }, label: {
                Image(systemName: "gear")
            })
                                // deprecated 되었다
                                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
            //                .navigationBarBackButtonHidden(true)

            VStack {
                Button("BACK BUTTON") {
                    // navi back button이랑 동일하게 동작
                    presentationMode.wrappedValue.dismiss()
                }

                NavigationLink("Click here") {
                    Text("3rd screen!")
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
