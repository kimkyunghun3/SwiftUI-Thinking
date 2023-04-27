//
//  GridBootcamp.swift
//  SwiftUIThinking
//
//  Created by LS-MAC-00211 on 2023/04/28.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        // grid 사이즈 정해준다
        // 각 column에 대한 사이즈를 정한다.
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
        // 최소 최대값 정할 수 있다(기본값으로하면 maximum꽉채운다)
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),

        // 컬럼 안에 모두 이 조건에 맞게 최대한 많이 넣을 수 있도록 해준다. 최대 300이니까 그 안에 들어갈 수 있는 아이템을 모두 넣는다
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)

            LazyVGrid(
                columns: columns,
                alignment: .center,
                // spacing nil는 0가 아니다 -> default 값이 존재
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {

                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                }

                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.green)
                        .padding()
                }
            }
            
            ForEach(0..<20) { index  in
                Rectangle()
                    .frame(height: 150)
            }
            
//            Rectangle()
//                .fill(.white)
//                .frame(height: 400)
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { inde  in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
