//
//  SafeAreaInsets.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/8/3.
//

import SwiftUI

struct SafeAreaInsetsSample: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(0..<10) { _ in
                    Rectangle()
                        .frame(height: 200)
                }
            }
            .navigationTitle("Safe area Insets")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay(alignment: .bottomLeading) {
            //                Text("dddddd")
            //                .frame(maxWidth: .infinity)
            //                .background(Color.mint)
            //            }
            
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("This is tips message")
                    .frame(maxWidth: .infinity)
                    .background(Color.mint.edgesIgnoringSafeArea(.bottom))
            }
            
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Text("Bottom message")
                    .frame(maxWidth: .infinity)
                    .background(Color.mint.edgesIgnoringSafeArea(.bottom))
            }
        }
    }
}

struct SafeAreaInsetsSample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsSample()
    }
}
