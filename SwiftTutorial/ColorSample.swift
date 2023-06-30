//
//  ColorSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/6/30.
//

import SwiftUI

struct ColorSample: View {
    
//    var color = #colorLiteral
    
    var color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color(color)
            )
            .frame(width: 300, height: 200)
    }
}

struct ColorSample_Previews: PreviewProvider {
    static var previews: some View {
        ColorSample()
    }
}
