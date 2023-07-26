//
//  Picker.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/26.
//

import SwiftUI

struct PickerSample: View {
    
    let options = [Color.red, Color.blue, Color.orange]
    
    @State private var option = Color.red
    
    @State var selected = "One"
    
    enum Colors: String, CaseIterable {
        case red, blue, gray
    }
    
    @State var selectedColor: Colors = Colors.blue
    
    var body: some View {
        VStack {
            
//            Picker("Title", selection: $selected) {
//              Text("One").tag("One")
//              Text("Two").tag("Two")
//            }
//
//            Picker("Selected a color", selection: $selectedColor) {
//                ForEach(Colors.allCases, id: \.self) { color in
//                    Text(color.rawValue).tag(color)
//                }
//            }
            
            Picker("automatic style", selection: $option) {
                ForEach(options, id: \.self) { option in
                    Text(option.description)
                        .foregroundColor(option)
                        .tag(option)
                }
            }.pickerStyle(.automatic)

            Divider()

            Picker("inline style", selection: $option) {
                ForEach(options, id: \.self) { option in
                    Text(option.description).tag(option)
                }
            }.pickerStyle(.inline)

            Divider()

            Picker("menu style", selection: $option) {
                ForEach(options, id: \.self) { option in
                    Text(option.description).tag(option)
                }
            }.pickerStyle(.menu)

            Divider()

            Picker("wheel style", selection: $option) {
                ForEach(options, id: \.self) { option in
                    Text(option.description).tag(option)
                }
            }.pickerStyle(.wheel)

            Divider()

            Picker("segmented style", selection: $option) {
                ForEach(options, id: \.self) { option in
                    Text(option.description).tag(option)
                }
            }.pickerStyle(.segmented)
        }
    }
}

struct PickerSample_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
    }
}
