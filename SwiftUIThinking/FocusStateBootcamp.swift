//
//  FocusStateBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct FocusStateBootcamp: View {

    enum OnboardingFields: Hashable {
        case username
        case password
    }

    @State private var username: String = ""
//    @FocusState private var usernameInFocus: Bool
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingFields?

    var body: some View {
        VStack {
            TextField("Add your name here..", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            TextField("Add your password here..", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            Button("SIGN UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password

//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }

//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
