//
//  OnAppearSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/28.
//

import SwiftUI

struct OnAppearSample: View {
    
    @State var title: String = "This is appear sample"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                   Text(title)
                    
                    LazyVStack {
                        ForEach(0..<50) { _ in
                            RoundedRectangle(cornerRadius: 25)
                                .fill()
                                .frame(height: 200)
                                .padding()
                                .onAppear {
                                    count += 1
                                }
                        }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    title = "This is delay message"
                })
            })
            .onDisappear(perform: {
                
            })
            .navigationTitle("On appear: \(count)")
        }
    }
}

struct OnAppearSample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearSample()
    }
}
