//
//  ForeachAndScrollView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/10.
//

import SwiftUI

struct ForeachAndScrollView: View {
    var body: some View {
        //        VStack {
        //            ForEach(0..<20) { index in
        //                Circle()
        //                    .frame(width: 60, height: 60)
        //            }
        //        }
        
//        ScrollView {
//            VStack {
//                ForEach(0..<20) { index in
//                    Text("Label \(index)")
//                        .padding()
//                        .background(Color.gray)
//                        .cornerRadius(10)
//                        .foregroundColor(Color.white)
//                        .font(.headline)
//                }
//            }
//            .padding()
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1)))
                                    .frame(width: 200, height: 180)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ForeachAndScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ForeachAndScrollView()
    }
}
