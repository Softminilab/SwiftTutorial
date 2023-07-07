//
//  SpacerSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/7.
//

import SwiftUI

struct SpacerSample: View {
    var body: some View {
//        HStack(spacing: 0) {
//
//            Spacer()
//                .frame(height: 8)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 8)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 8)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 8)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 8)
//                .background(Color.orange)
//        }
        
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)

            Spacer()

            Rectangle()
                .frame(height: 60)
        }
    }
}

struct SpacerSample_Previews: PreviewProvider {
    static var previews: some View {
        SpacerSample()
    }
}
