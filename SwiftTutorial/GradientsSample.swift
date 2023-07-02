//
//  GradientsSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/2.
//

import SwiftUI

struct GradientsSample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [
//                            Color.green,
//                            Color.blue
//                        ]
//                    ),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)

                
//                AngularGradient(
//                    gradient: Gradient(
//                        colors: [
//                            Color.green,
//                            Color.blue
//                        ]
//                    ),
//                    center: .topLeading,
//                    angle: .degrees(215)
//                )
                
//                RadialGradient(
//                    gradient: Gradient(
//                        colors: [
//                            Color.green,
//                            Color.blue
//                        ]
//                    ),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 100
//                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsSample_Previews: PreviewProvider {
    static var previews: some View {
        GradientsSample()
    }
}
