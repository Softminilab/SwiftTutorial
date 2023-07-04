//
//  FrameSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/4.
//

import SwiftUI

struct FrameSample: View {
    var body: some View {
            Text("Hello, World!")
                .background(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
                .background(Color.orange)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .frame(maxHeight: 400, alignment: .top)
                .background(Color.brown)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(Color.purple)
    }
}

struct FrameSample_Previews: PreviewProvider {
    static var previews: some View {
        FrameSample()
    }
}
