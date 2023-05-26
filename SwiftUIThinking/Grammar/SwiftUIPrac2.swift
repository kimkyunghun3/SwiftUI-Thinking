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

            EditScreen(showEditScreen: $showEditScreen)
                .padding(.top, 100)
                .offset(y: showEditScreen ? 0 : UIScreen.main.bounds.height)
        }
    }
}

struct EditScreen: View {

    @Environment(\.dismiss) var dismiss
    @Binding var showEditScreen: Bool

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
                

                RoutineManagement(isSelected: false)

                Button {
                    
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

struct RoutineScene: View {
    @State var isSelected: Bool
    
    var imageName: String
    var textName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(textName)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(
                            isSelected ? Color.green : Color.gray.opacity(0.3),
                            lineWidth: isSelected ? 8 : 4)
                        .frame(width: 170, height: 70)
                }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .frame(width: 180, height: 70)
        .onTapGesture {
            isSelected = !isSelected
        }
    }
}

struct RoutineManagement: View {
    var isSelected: Bool
    
    var body: some View {
        VStack {
            HStack {
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "물 마시기")
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "스트레칭")
            }

            HStack {
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "물 마시기")
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "스트레칭")
            }

            HStack {
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "물 마시기")
                RoutineScene(isSelected: isSelected, imageName: "heart.fill", textName: "스트레칭")
            }
        }
    }
}

//struct SwiftUIPrac2_Previeww: View {
//    @State var isSelected: Bool
//
//    var body: some View {
//
//        RoutineManagement(isSelected: isSelected)
//
//
//    }
//}

struct SwiftUIPrac2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPrac2()
    }
}
