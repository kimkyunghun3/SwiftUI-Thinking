//
//  ListSwipeActionBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                        Button("Archive") {

                        }
                        .tint(.green)
                        Button("Save") {

                        }
                        .tint(.blue)

                        Button("Jink") {

                        }
                        .tint(.black)
                            
                    }

                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: true) {
                        Button("Share") {

                        }
                        .tint(.yellow)
                    }
            }
//            .onDelete(perform: delete)
        }
    }

    func delete(indexSet: IndexSet) {

    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
