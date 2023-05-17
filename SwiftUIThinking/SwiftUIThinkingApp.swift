//
//  SwiftUIThinkingApp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/04/17.
//

import SwiftUI

@main
struct SwiftUIThinkingApp: App {

    @StateObject var listViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
