//
//  DatePickerBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/05/04.
//

import SwiftUI

struct DatePickerBootcamp: View {

    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)

            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(.wheel)
        }
//        DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker(
//            "Select a Date",
//            selection: $selectedDate,
//            // 기본 2개
////            displayedComponents: [.date, .hourAndMinute])
//            displayedComponents: [.hourAndMinute])
//            .tint(Color.red)


        // starting, ending 생일같은거 지정할 때 사용하면 좋다

        // 기본
//            .datePickerStyle(.compact)
        // 달력형식
//            .datePickerStyle(.graphical)
//            .datePickerStyle(.wheel)
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
