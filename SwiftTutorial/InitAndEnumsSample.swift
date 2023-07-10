//
//  InitAndEnumsSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/9.
//

import SwiftUI

struct InitAndEnumsSample: View {
    
    let background: Color
    let count: Int
    let fruitName: String
    
    init(fruit: Fruit, count: Int) {
        self.count = count
        
        if fruit == .Apple {
            self.background = Color.red
            self.fruitName = "Apple"
        } else {
            self.background = Color.purple
            self.fruitName = "Grape"
        }
    }
    
    enum Fruit {
        case Apple
        case Grape
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text("\(fruitName)")
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(background)
        .cornerRadius(8)
    }
}

struct InitAndEnumsSample_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitAndEnumsSample(
                fruit: .Apple,
                count: 10
            )
            InitAndEnumsSample(
                fruit: .Grape,
                count: 8
            )
        }
    }
}
