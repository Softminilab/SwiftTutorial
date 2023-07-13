//
//  SafeAreaSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/13.
//

import SwiftUI

struct SafeAreaSample: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Color.red
                        .edgesIgnoringSafeArea(.all)
                )
        }
        
//        ZStack {
//
//            Rectangle()
//                .fill(
//                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                )
//                .ignoresSafeArea()
//
//            Button {
//
//            } label: {
//                Text("点我")
//                    .foregroundColor(Color.black)
//                    .padding()
//                    .padding(.horizontal, 20)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
//            }
//        }
    }
}

struct SafeAreaSample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaSample()
    }
}
