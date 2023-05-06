//
//  ViewModelBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/06.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // struct, VIEW가 아니라서 @State 안붙인다
    // class에서 @State와 동일하게 동작한다
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading = false

    init() {
        getFruits()
    }

    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }

    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {

    // 하나 변수가 아닌 클래스일 때 이것을 선언한다
//    @ObservedObject var fruitViewModel = FruitViewModel()

    // 계속 뷰가 업데이트 되더라도 refresh되지 않고 가지고 있는다
    // 클래스에서 변화가 생기면 이를 알려준다
    // @StateObject -> 생성할 때, 초기화할 때 사용

    // @ObservedObject -> sceond View에서 사용할 때
    @StateObject var fruitViewModel = FruitViewModel()

    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete { indexSet in
                            fruitViewModel.deleteFruit(index: indexSet)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RandomScreen( fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
                }
            }
        }
    }
}


struct RandomScreen: View {
    // 어떤 뷰모델 사용할 것인지 선택
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//        RandomScreen()
    }
}
