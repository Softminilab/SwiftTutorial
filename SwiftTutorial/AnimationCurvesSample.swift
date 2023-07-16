//
//  AnimationCurvesSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/15.
//

import SwiftUI

struct AnimationCurvesSample: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.timingCurve(0.6, 0.52, 0.99, -0.02), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.default, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.easeInOut(duration: 10), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.easeIn, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(Animation.easeOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(.spring(), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 80)
                .animation(.spring(
                    response: 0.3,
                    dampingFraction: 0.7,
                    blendDuration: 0.3
                ), value: isAnimating)
        }
    }
}

struct AnimationCurvesSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesSample()
    }
}
