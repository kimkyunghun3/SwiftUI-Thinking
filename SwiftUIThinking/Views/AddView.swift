//
//  AddView.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/17.
//

import SwiftUI

struct AddView: View {

    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""

    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here..", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.brightness(0.5))
                    .cornerRadius(10)

                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋️")
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }

    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
    }

    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your name todo item must be at least 3 characters long!!! "
            showAlert.toggle()
            return false
        }

        return true
    }

    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
