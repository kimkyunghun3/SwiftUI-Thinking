//
//  ListBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/01.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]

    var body: some View {
        NavigationView {
            List {
                Section(content: {
                    ForEach(fruits, id: \.self) { fruit in
                        // 첫 글자 대문자로 만들어준다
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                        // 각 list마다 크기와 색깔 지정해줄 수 있지만 .listRowBackground로 하는게 더좋다
                        //                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        //                        .background(.pink)
                            .padding(.vertical)
                    }

                    // 2가지 방법이 있다. 이렇게 delete해서 사용가능
                    .onDelete(perform: delete)

                    // 이 방법은 직관적으로 delete 쓰는 방식
                    //                .onDelete { indexSet in
                    //                    delete(indexSet: indexSet)
                    //                }

                    // move도 동일하게 2가지 방법이 존재
                    .onMove(perform: move)
                    // List 배경색 한번에 정할 수 있다.
                    .listRowBackground(Color.blue)

                    //                .onMove { indices, newOffset in
                    //                    move(indices: indices, newOffset: newOffset)
                    //                }
                }, header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange) }
                )
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .accentColor(.purple)
            // Style 여러개 존재 ipad, iphone 마다 다르게 보인다
                    .listStyle(PlainListStyle())
            //        .navigationTitle("hello")
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            .accentColor(.red)
        }
    }

    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }

    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
