//
//  PickerBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]

    init() {
        // 모든 segmentedControl에서 적용되므로 조심해야한다! 하나면 괜찮지만 여러개면 여러곳에서 적용된다
        UISegmentedControl.appearance().selectedSegmentTintColor = .red

        // Text관련 모두 커스텀해줄 수 있다
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]

        // 선택했을 때 바꾸고 싶은 상태를 결정할 수 있다
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {

        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(.wheel)



//        Picker(
//            selection: $selection) {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
//            } label: {
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            }
//            .pickerStyle(.menu)




//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//
//                } label: {
//                    Text("Picker")
//                }
//            // 기본이 wheel이 아니다 이제!
//                .pickerStyle(.wheel)
////                .background(.gray.opacity(0.3))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
