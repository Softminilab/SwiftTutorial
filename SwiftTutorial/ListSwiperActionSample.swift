//
//  ListSwiperActionSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/30.
//

import SwiftUI

struct ListSwiperActionSample: View {
    @State var fruits: [String] = [
        "🍎", "🍊", "🍇", "🍓"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button("Share", action: {})
                            .tint(.orange)
                        }
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive", action: {})
                        .tint(.gray)
                        Button("Save", action: {})
                        .tint(.green)
                        Button("Edit", action: {})
                        .tint(.yellow)
                    }
                
            }
        }
    }
}

struct ListSwiperActionSample_Previews: PreviewProvider {
    static var previews: some View {
        ListSwiperActionSample()
    }
}
