//
//  DarkModelSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/28.
//

import SwiftUI

struct DarkModeSample: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hi, good evening")
                    .foregroundColor(.primary)
                Text("Hi, good evening")
                    .foregroundColor(.secondary)
                Text("Hi, good evening")
                    .foregroundColor(.red)
                Text("Hi, good evening")
                    .foregroundColor(.black)
                Text("Hi, good evening")
                    .foregroundColor(.white)
                
                Text("Hi, good evening - variable colorscheme")
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .navigationTitle("DarkMode sample")
        }
    }
}

struct DarkModeSample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeSample()
                .preferredColorScheme(.dark)

            DarkModeSample()
                .preferredColorScheme(.light)
        }
    }
}
