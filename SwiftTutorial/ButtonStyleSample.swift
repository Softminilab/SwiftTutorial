//
//  ButtonStyleSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct ButtonStyleSample: View {
    var body: some View {
        VStack(spacing: 30) {
            
            // Button style
            Button("Button title") {}
            .buttonStyle(.bordered)
            Button("Button title") {}
            .buttonStyle(.borderedProminent)
            Button("Button title") {}
            .buttonStyle(.borderless)
            Button("Button title") {}
            .buttonStyle(.plain)
            
            // BorderShape
            Button("Button title") {}
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            
            Button("Button title") {}
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            
            Button("Button title") {}
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 30))
        }
    }
}

struct ButtonStyleSample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleSample()
    }
}
