//
//  LazyGridSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/11.
//

import SwiftUI

struct LazyGridSample: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 250)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                Section {
                    ForEach(0..<19) { index in
                        Rectangle()
                            .fill()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                }
                
                Section {
                    ForEach(0..<49) { index in
                        Rectangle()
                            .fill(Color.purple)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.orange)
                        .padding()
                }
            }
        }
    }
}

struct LazyGridSample_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridSample()
    }
}
