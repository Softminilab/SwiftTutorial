//
//  ContextMenuSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/21.
//

import SwiftUI

struct ContextMenuSample: View {
    
    private let menuItems = ContextMenu {
        Button {
            // Add this item to a list of favorites.
        } label: {
            Label("Add to Favorites", systemImage: "heart")
        }
        Button {
            // Open Maps and center it on this item.
        } label: {
            Label("Show in Maps", systemImage: "mappin")
        }
    }
    
    @State var showContextMenu: Bool = true
    
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
        // Method 1
//        .contextMenu {
//                    Button {} label: {
//                        Label("Cut", systemImage: "scissors")
//                    }
//
//                    Button {} label: {
//                        Label("Past", systemImage: "wallet.pass")
//                    }
//
//                    Button {} label: {
//                        Label("Delete", systemImage: "trash")
//                    }
//                }
        // Method 2
        //        .contextMenu(showContextMenu ? menuItems : nil)
    }
}

struct ContextMenuSample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuSample()
    }
}
