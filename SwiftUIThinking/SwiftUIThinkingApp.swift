//
//  SwiftUIThinkingApp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/17.
//

import SwiftUI

@main
struct SwiftUIThinkingApp: App {

//    @StateObject var listViewModel = ListViewModel()
    @StateObject private var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
//            NavigationStack {
//                ListView()
//            }
//            .environmentObject(listViewModel)
        }
    }
}
