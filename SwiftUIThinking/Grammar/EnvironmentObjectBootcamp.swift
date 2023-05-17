//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/06.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {

    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}


struct EnvironmentObjectBootcamp: View {

    @StateObject var viewModel = EnvironmentViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        // subview 모두 이 viewModel에 접근할 수 있도록 만든다!
        // 각각 데이터 패스할 필요없이 접근가능하다
        .environmentObject(viewModel)
    }
}

struct DetailView: View {

    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel

    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()

            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {

//    @ObservedObject var viewMoel: EnvironmentViewModel
    // environment로 가져오는거지 패스해서 데이터를 가져오지않도록 한다
    @EnvironmentObject var viewMoel: EnvironmentViewModel

    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()

            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewMoel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
