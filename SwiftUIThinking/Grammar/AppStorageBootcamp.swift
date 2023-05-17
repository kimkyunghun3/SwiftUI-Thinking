//
//  AppStorageBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/12.
//

import SwiftUI

struct AppStorageBootcamp: View {

//    @State var currentUserName: String?
    // set 할 필요 없이 자동적으로 set해주고 보여준다
    // 앱에서 어떤 뷰에도 적용된다.
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")

            if let name = currentUserName {
                Text(name)
            }

            Button("Save".uppercased()) {
                let name = "emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
