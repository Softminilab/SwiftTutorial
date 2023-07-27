//
//  ColorPickerSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/26.
//

import SwiftUI

struct ColorPickerSample: View {
    
    @State var backgroundColor = Color.red
        
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Select a color",
                selection: $backgroundColor,
            supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerSample_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerSample()
    }
}
