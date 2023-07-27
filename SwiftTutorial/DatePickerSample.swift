//
//  DatePickerSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/26.
//

import SwiftUI

struct DatePickerSample: View {
    
    @State var date = Date()
    
    var body: some View {
        VStack {
//            DatePicker(selection: $date) {
//                Text("Displayed all components")
//            }
            
//            DatePicker(selection: $date, displayedComponents: .date) {
//                Text("date")
//            }
//
//            DatePicker(selection: $date, displayedComponents: .hourAndMinute) {
//                Text("hourAndMinute")
//            }
//
//            Divider()
//                .frame(height: 4)
//                .background(Color.blue)
//
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(.compact)
        }
    }
}

struct DatePickerSample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSample()
    }
}
