//
//  StepperSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/26.
//

import SwiftUI

struct StepperSample: View {
    @State var value = 0
    let range = 0...10
    let step = 1
    
    let colors = [Color.red, Color.blue, Color.orange]
    @State var colorIndex = 0
    var body: some View {
        ZStack {
            //            Stepper(value: $value,
            //                    in: range,
            //                    step: step) {
            //                Text("Current: \(value)")
            //            }
            //                    .padding(10)
            
            colors[colorIndex]
                .edgesIgnoringSafeArea(.all)
            
            Stepper(
                "Select a backgroundColor",
                onIncrement: incrementStep,
                onDecrement: decrementStep)
            .foregroundColor(Color.black)
            .font(.headline)
            .padding()
            .background(Color.white.cornerRadius(10))
            .padding(20)
        }
    }
    
    func incrementStep() {
        colorIndex += 1
        guard colorIndex < colors.count else {
            colorIndex = 0
            return
        }
    }
    
    func decrementStep() {
        colorIndex -= 1
        guard colorIndex > 0 else {
            colorIndex = colors.count - 1
            return
        }
    }
}

struct StepperSample_Previews: PreviewProvider {
    static var previews: some View {
        StepperSample()
    }
}
