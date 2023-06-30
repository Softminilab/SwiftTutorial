//
//  ShapesSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/6/29.
//

import SwiftUI

struct ShapesSample: View {
    var body: some View {
        Rectangle()
//            .fill(Color.red)
//            .foregroundColor(Color.orange)
//            .stroke()
//            .stroke(Color.red, lineWidth: 3)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            .trim(from: 0.0, to: 0.9)
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 300, height: 200)
    }
}

struct ShapesSample_Previews: PreviewProvider {
    static var previews: some View {
        ShapesSample()
    }
}
