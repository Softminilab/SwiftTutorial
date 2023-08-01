//
//  MaterialsSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct MaterialsSample: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(height: 4)
                    .frame(width: 30)
                    .padding()
                
                Spacer()
            }
            .frame(height: 320)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            LinearGradient(colors: [Color.orange, Color.black], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct MaterialsSample_Previews: PreviewProvider {
    static var previews: some View {
        MaterialsSample()
    }
}
