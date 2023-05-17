//
//  ListViewModel.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/17.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }

    func updateItem(item: ItemModel) {

        // index가 없어서 이걸 통해 찾아간다
//        if let index = items.firstIndex { existingItem in
//            return existingItem.id == item.id
//        } {
//            // run this code
//        }

        if let index = items.firstIndex(where: { $0.id == item.id }) {
            // init으로 생성해주므로 따로 값을 넣어줄 필요가 없다
            items[index] = item.updateCompletion()
        }
    }
}
