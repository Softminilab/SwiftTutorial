//
//  TextSelectSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct TextSelectSample: View {
    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled)
    }
}

struct TextSelectSample_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectSample()
    }
}
