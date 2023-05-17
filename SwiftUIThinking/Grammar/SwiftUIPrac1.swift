//
//  SwiftUIPrac.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct SwiftUIPrac1: View {
    enum Gender: String {
        case male = "남"
        case female = "여"
    }
    
//    @State var name = ""
//    @State var age = ""
//    @State var count = 0

    @State var gender: Gender = .male
    @State var imageName: String
    @State var title: String
    @State var count: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 30) {

            setPageTitle(title: "관리")

            HStack(spacing: 10) {
                setTop(imageName: "heart.fill", age: 26, name: "김도연", gender: .male)
            }

            HStack(spacing: 30) {
                TapView(imageName: .constant("swift"), title: .constant("받은 진료"), count: .constant(0))
                TapView(imageName: .constant("swift"), title: .constant("복약"), count: .constant(0))
                TapView(imageName: .constant("swift"), title: .constant("의사 목록"), count: .constant(0))

                // 외부에서 값 받아오는 경우 이렇게 사용한다
//                TapView(imageName: $imageName, title: $title, count: $count)

                // 내부 메서드로 만들없을 경우 사용법
//                TapView(imageName: "swift", title: "복약", count: 0)
//                TapView(imageName: "swift", title: "의사 목록", count: 0)
//                setTap(imageName: "swift", title: "받은진료", count: 0)
//                setTap(imageName: "swift", title: "복약", count: 0)
//                setTap(imageName: "swift", title: "의사목록", count: 0)
            }
            Spacer()
        }
    }

    private func setPageTitle(title: String) -> some View {
        Text(title)
            .font(.largeTitle)
            .bold()
    }

    private func setTop(imageName: String, age: Int, name: String, gender: Gender) -> some View {
        HStack(spacing: 10) {
            Image(systemName: imageName)
                .font(.largeTitle)

            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    Text(name)
                        .font(.largeTitle)
                        .bold()
                    Text("님")
                        .bold()
                }
                Text("만 \(age)세(\(gender.rawValue))")
            }
        }
    }

//    private func setTap(imageName: String, title: String, count: Int) -> some View {
//        VStack(alignment: .center, spacing: 5) {
//            Image(systemName: imageName)
//                .font(.largeTitle)
//            HStack {
//                Text(title)
//                Text("\(count)")
//            }
//        }
//    }
}

struct TapView: View {
    @Binding var imageName: String
    @Binding var title: String
    @Binding var count: Int

    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Image(systemName: imageName)
                .font(.largeTitle)
            HStack {
                Text(title)
                Text("\(count)")
            }
        }
    }
}

struct SwiftUIPrac1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPrac1(imageName: "swift", title: "", count: 0)
    }
}
