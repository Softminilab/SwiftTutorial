//
//  ColorSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/6/30.
//

import SwiftUI

struct ColorSample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.blue
                Color(String(stringLiteral: "customecolor"))
            )
            .frame(width: 300, height: 200)
    }
}

struct ColorSample_Previews: PreviewProvider {
    static var previews: some View {
        ColorSample()
    }
}
