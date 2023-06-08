//
//  MultipleSheetsBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/06/08.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - user a binding
// 2 - use mutiple .sheets
// 3 - use $item

struct MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel? = nil
    //    @State var showSheet = false
    //    @State var showSheet2 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<50) { index in
                    Button("Button \(index)") {
                        selectedModel = RandomModel(title: "\(index)")
                        //                showSheet.toggle()
                    }
                }
            }
            .sheet(item: $selectedModel) { model in
                NextScreen(selectedModel: model)
            }
            
            
            
            // 2번쨰방법
            //            .sheet(isPresented: $showSheet) {
            //                NextScreen(selectedModel: RandomModel(title: "ONE"))
            //            }
            
            //            Button("Button 2") {
            //                selectedModel = RandomModel(title: "TWO")
            ////                showSheet2.toggle()
            //            }
            // 2번쨰방법
            //            .sheet(isPresented: $showSheet2) {
            //                NextScreen(selectedModel: RandomModel(title: "TWO"))
            //            }
        }
        // 3번째 방법
        
        //        .sheet(isPresented: $showSheet) {
        //            NextScreen(selectedModel: selectedModel)
        //        }
    }
}

struct NextScreen: View {
    
    let selectedModel: RandomModel
    // 1번 방법
    //    @Binding var selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}
