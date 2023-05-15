//
//  BadgesBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {

        List {
            Text("hello World")
                .badge("NEW ITEMS!")
            Text("hello World")
            Text("hello World")
            Text("hello World")
            Text("hello World")
        }

//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
