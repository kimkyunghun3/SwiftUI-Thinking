//
//  ArraysBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/06/09.
//

import SwiftUI

struct UserModels: Identifiable {
    let id = UUID().uuidString
    let name: String?
    let point: Int
    let isVerified: Bool
}

class ArrayModificationViewModel: ObservableObject {

    @Published var dataArray: [UserModels] = []
    @Published var filterArray: [UserModels] = []
    @Published var mappedArray: [String] = []

    init() {
        getUsers()
        updateFilteredArray()
    }

    func updateFilteredArray() {
//        filterArray = dataArray.sorted { user1, user2 in
//            return user1.point > user2.point
//        }

//        filterArray = dataArray.sorted(by: { $0.point > $1.point })




//        filterArray = dataArray.filter({ user in
//            return user.isVerified
//        })

//        filterArray = dataArray.filter( { $0.isVerified } )

//        mappedArray = dataArray.map({ user in
//            return user.name ?? "ERROR"
//        })

//        mappedArray = dataArray.map { $0.name }

//        mappedArray = dataArray.compactMap({ user in
//            user.name
//        })

//        let sort = dataArray.sorted(by: { $0.point > $1.point })
//        let filter = dataArray.filter({ $0.isVerified })
//        let map = dataArray.compactMap( { $0.name })


        mappedArray = dataArray
                        .sorted(by: { $0.point > $1.point })
                        .filter({ $0.isVerified })
                        .compactMap( { $0.name })
    }

    func getUsers() {
        let user1 = UserModels(name: "Nick1", point: 5, isVerified: true)
        let user2 = UserModels(name: "Nick2", point: 0, isVerified: false)
        let user3 = UserModels(name: "Nick3", point: 20, isVerified: true)
        let user4 = UserModels(name: nil, point: 50, isVerified: true)
        let user5 = UserModels(name: "Nick5", point: 53, isVerified: false)
        let user6 = UserModels(name: nil, point: 51, isVerified: true)
        let user7 = UserModels(name: "Nick7", point: 25, isVerified: false)
        let user8 = UserModels(name: "Nick8 ", point: 55, isVerified: false)
        let user9 = UserModels(name: "Nick9", point: 75, isVerified: false)
        let user10 = UserModels(name: "Nick10", point: 3, isVerified: true)
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7,
            user8,
            user9,
            user10,
        ])
    }
}

struct ArraysBootcamp: View {

    @StateObject var vm = ArrayModificationViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(vm.mappedArray, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
//                ForEach(vm.filterArray) { user in
//                    VStack(alignment: .leading) {
//                        Text(user.name)
//                            .font(.headline)
//                        HStack {
//                            Text("Points: \(user.point)")
//                            Spacer()
//                            if user.isVerified {
//                                Image(systemName: "flame.fill")
//                            }
//                        }
//                    }
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue.cornerRadius(10))
//                    .padding(.horizontal)
//                }
            }
        }
    }
}

struct ArraysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArraysBootcamp()
    }
}
