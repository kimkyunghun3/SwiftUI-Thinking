//
//  IntroView.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/15.
//

import SwiftUI

struct IntroView: View {

    @AppStorage("signed_in") var currentUserSignedInt: Bool = false

    var body: some View {
        ZStack {
            // background
            RadialGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                center: .top,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()

            if currentUserSignedInt {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
