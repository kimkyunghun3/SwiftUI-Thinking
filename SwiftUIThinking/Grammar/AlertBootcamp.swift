//
//  AlertBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/01.
//

import SwiftUI

struct AlertBootcamp: View {

    @State var showAlert = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle = ""
//    @State var alertMessage = ""
    @State var backgroundColor = Color.yellow

    enum MyAlerts {
        case success
        case error
    }

    var body: some View {
        ZStack {

            backgroundColor.edgesIgnoringSafeArea(.all)

            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }

                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video🥳"
//                    alertMessage = "Yout video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
        })
        }
    }

    func getAlert() -> Alert {

        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }

//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            //                .destructive(Text("DELETE"))
//            secondaryButton: .cancel()
//        )
        // Alert(title: Text("There was an error!"))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
