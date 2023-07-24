//
//  ButtonSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/13.
//

import SwiftUI

struct ButtonSample: View {
    
    @State var title: String = "这是标题"
    
    var body: some View {
        VStack(spacing: 40) {
            Text(title)
                .font(.subheadline)
            
            Button("点我") {
                title = "我点击了按钮 #1"
            }
            .tint(Color.gray)
            
            Button {
                title = "我点击了按钮 #2"
            } label: {
                Text("点我 #2")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Button {
                title = "我点击了按钮 #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 60,height: 60)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                title = "我点击了按钮 #4"
            } label: {
                Text("完成")
                    .foregroundColor(Color.gray)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                            .frame(width: 100, height: 50)
                    )
            }
            
            Button {
                title = "我点击了按钮 #5"
            } label: {
                Text("渐变色按钮")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(
                        LinearGradient(
                            colors: [Color.orange, Color.yellow],
                            startPoint: .leading, endPoint: .trailing
                        )
                    )
                    .cornerRadius(10)
            }
            
            Button {
                title = "我点击了按钮 #6"
            } label: {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Play")
                }
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal, 10)
                .background(Color.blue)
                .cornerRadius(10)
            }
        }
    }
}

struct ButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSample()
    }
}
