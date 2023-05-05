//
//  TabViewBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/05.
//

import SwiftUI

struct TabViewBootcamp: View {

    @State var selectedTab = 0

    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]

    var body: some View {

        // 들어갈 내용을 반복문을 통해 만든다
//        TabView {
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding(30)
//            }
////            RoundedRectangle(cornerRadius: 25.0)
////                .foregroundColor(.red)
////            RoundedRectangle(cornerRadius: 25.0)
////            RoundedRectangle(cornerRadius: 25.0)
////                .foregroundColor(.green)
//        }
//        .background(
//            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
//        )
//        .frame(height: 300)
//        // page 방식으로 보여줌 carousel 방식
//        .tabViewStyle(.page)




        // tag를 활용해서 선택된 탭에 따라 색상 변하도록 구현
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button {
                    selectedTab = 2
                } label: {
                    Text("go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
