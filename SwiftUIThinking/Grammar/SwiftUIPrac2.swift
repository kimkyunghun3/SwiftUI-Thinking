//
//  SwiftUIPrac2.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/10.
//

import SwiftUI

struct SwiftUIPrac2: View {

    @State var showEditScreen = false

    var body: some View {
        ZStack {
            Button("편집모드") {
                showEditScreen.toggle()
            }

            EditScreen(showEditScreen: $showEditScreen, isSelected: false)
                .padding(.top, 100)
                .offset(y: showEditScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())

        }
    }
}

struct EditScreen: View {

    @Environment(\.dismiss) var dismiss
    @Binding var showEditScreen: Bool
    @State var isSelected: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
                .edgesIgnoringSafeArea(.all)

            
            VStack {
                HStack {
                    Text("나의 습관관리 편집")
                        .padding(.leading, 30)
                        .padding(.bottom, 20)
                        .foregroundColor(.black)
                        .font(.callout)
                        .bold()

                    Spacer()

                    Button {
                        showEditScreen.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .padding(.trailing, 20)
                            .padding(.bottom, 20)
                            .foregroundColor(.black)
                            .font(.subheadline)
                            .padding(5)
                    }
                }

                RoutineManagement(isSelected: $isSelected)


                Button {
                    dismiss
                } label: {
                    Text("저장하기")
                        .foregroundColor(.white)
                }
                .frame(width: 350, height: 50)
                .background(Color.green)
                .cornerRadius(10)
                

            }
        }
    }
}

struct RoutineManagement: View {
    @Binding var isSelected: Bool

    var body: some View {

        VStack {
            HStack {
                setData(imageName: "heart.fill", textName: "물 마시기")
                setData(imageName: "heart.fill", textName: "스트레칭")
            }

            HStack {
                setData(imageName: "heart.fill", textName: "유산소 운동")
                setData(imageName: "heart.fill", textName: "근력 운동")
            }

            HStack {
                setData(imageName: "heart.fill", textName: "금주하기")
                setData(imageName: "heart.fill", textName: "금연하기")
            }
        }
    }

    private func setData(imageName: String, textName: String) -> some View {
        HStack {
            Image(systemName: imageName)
            Text(textName)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .frame(width: 170, height: 70)
        .background(isSelected ? .green : .white)
        .cornerRadius(15)
//        .background(Color.green)
    }
}

struct SwiftUIPrac2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPrac2()
    }
}
