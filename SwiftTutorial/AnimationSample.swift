//
//  AnimationSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/14.
//

import SwiftUI

struct AnimationSample: View {
    
    @State private var xOffset = 0.0
    @State private var scale: CGFloat = 1
    @State private var isAnimated: Bool = false
    @State private var isShowing: Bool = false
    
    var body: some View {
        //        VStack {
        //            Button("Zoom In") {
        //              withAnimation {
        //                  scale += 0.1
        //              }
        //            }
        //
        //            Spacer()
        //
        //            Circle()
        //              .scaleEffect(scale)
        //        }
        
        //        VStack {
        //
        //                    Button("Button") {
        //                        withAnimation {
        //                            isAnimated.toggle()
        //                        }
        //                    }
        //
        //                    Spacer()
        //
        //                    RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
        //                        .fill(isAnimated ? Color.yellow : Color.mint)
        //                        .frame(
        //                            width: isAnimated ? 100 : 200,
        //                            height: isAnimated ? 100 : 200
        //                        )
        //                        .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
        //                        .offset(y: isAnimated ? 300 : 0)
        //                    Spacer()
        //                }
        
        
        //        VStack {
        //            Button("Toggle") {
        //                withAnimation(.easeInOut) {
        //                    self.isShowing.toggle()
        //                }
        //            }
        //
        //            if isShowing {
        //                Text("Hello, World!")
        //                    .transition(.scale)
        //            }
        //        }
        //        .padding()
        
        
        VStack {
            Button("Move Button") {
                withAnimation(.easeInOut) {
                    xOffset += 50
                }
            }
            
            Circle()
                .offset(x: xOffset, y: 0)
        }
    }
}

struct AnimationSample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSample()
    }
}
