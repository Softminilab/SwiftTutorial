//
//  BackgroundAndOverlayerSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/4.
//

import SwiftUI

struct BackgroundAndOverlayerSample: View {
    var body: some View {
        let color = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        Image(systemName: "heart.fill")
            .font(.system(size: 45))
            .foregroundColor(Color.white)
            .background {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color.green, Color.blue]
                            ),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: color, radius: 10, x: 0, y: 6)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("8")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .shadow(color: Color.blue, radius: 10, x: 3, y: 3)
                    })
            }
        
//        ZStack { // 使用 ZStack 创建视图层次结构
//            Color.blue // 原始视图
//                .frame(width: 200, height: 200)
//
//            Text("Overlay") // 覆盖层上的文本视图
//                .foregroundColor(.white)
//                .font(.title)
//                .padding()
//                .background(Color.black)
//                .opacity(0.7)
//                .cornerRadius(10)
//                .overlay(
//                    Image(systemName: "star.fill") // 覆盖层上的图标视图
//                        .foregroundColor(.yellow)
//                        .font(.largeTitle)
//                        .padding(20)
//                )
//        }
        
//        Rectangle()
//            .fill(Color.orange)
//            .frame(width: 200, height: 200)
//            .overlay(alignment: .topLeading, content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//            })
//            .background(alignment: .topLeading, content: {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 300, height: 300)
//            })
    }
}

struct BackgroundAndOverlayerSample_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayerSample()
    }
}
