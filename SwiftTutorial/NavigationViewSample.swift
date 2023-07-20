//
//  NavigationView.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/19.
//

import SwiftUI

struct NavigationViewSample: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("HELLO", destination: SecondView())
                Text("HELLO")
                Text("HELLO")
                Text("HELLO")
            }
            .navigationTitle("All Items")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.red)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SecondView()) {
                        Image(systemName: "gear")
                            .tint(Color.black)
                    }
                }
            }
        }
    }
}

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.mint
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Second View")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK") {
                    dismiss()
                }
                
                NavigationLink("Click", destination: Text("Three screen"))
            }
        }
        .foregroundStyle(Color.black)
    }
}

struct NavigationViewSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewSample()
    }
}
