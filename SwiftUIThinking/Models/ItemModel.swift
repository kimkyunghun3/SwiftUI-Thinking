//
//  ItemModel.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/17.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
