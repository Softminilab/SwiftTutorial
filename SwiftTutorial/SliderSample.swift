//
//  SliderSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/26.
//

import SwiftUI

struct SliderSample: View {
    @State var isEditing: Bool = false
    @State var value: Double = 4.0
    var body: some View {
        VStack {
            Slider(value: $value)
            
            Slider(
                value: $value,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\(value)")
                .foregroundColor(isEditing ? .red : .blue)
            
            Slider(
                value: $value,
                in: 0...100,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            Text("\(value)")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct SliderSample_Previews: PreviewProvider {
    static var previews: some View {
        SliderSample()
    }
}
