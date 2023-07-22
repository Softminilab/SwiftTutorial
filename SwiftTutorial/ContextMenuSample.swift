//
//  ContextMenuSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/21.
//

import SwiftUI

struct ContextMenuSample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
            Text("SwiftUI sample")
                .font(.title2)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .padding()
        .foregroundColor(Color.white)
        .background(Color.green.cornerRadius(20))
        .contextMenu {
            Text("Context menu1")
            Text("Context menu1")
            Text("Context menu1")
        }
    }
}

struct ContextMenuSample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuSample()
    }
}
