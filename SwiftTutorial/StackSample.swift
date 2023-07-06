//
//  StackSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/5.
//

import SwiftUI

struct StackSample: View {
    var body: some View {
        ZStack(alignment:.topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
        }
        
        
//        ZStack {
//            Rectangle()
//                .fill(
//                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                )
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Rectangle()
//                    .fill(Color.cyan)
//                    .frame(width: 200, height: 200)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 150)
//
//                HStack  {
//                    Circle()
//                        .fill(Color.black)
//                        .frame(width: 80, height: 80)
//
//                    Rectangle()
//                        .fill(Color.black)
//                        .frame(width: 130, height: 80)
//
//                    Circle()
//                        .fill(Color.black)
//                        .frame(width: 80, height: 80)
//                }
//            }
//        }
        
        
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
//
//            VStack(spacing: 20) {
//                HStack(spacing: 20) {
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.yellow)
//                        .font(.largeTitle)
//                    Text("SwiftUI")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                }
//
//                VStack(spacing: 10) {
//                    Text("Welcome to")
//                        .foregroundColor(.white)
//                    Text("Stack World!")
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//                        .bold()
//                }
//                .padding()
//                .background(Color.black.opacity(0.5))
//                .cornerRadius(10)
//            }
//        }
    }
}

struct StackSample_Previews: PreviewProvider {
    static var previews: some View {
        StackSample()
    }
}
