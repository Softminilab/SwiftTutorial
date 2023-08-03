//
//  ResizableSheetSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/8/2.
//

import SwiftUI

struct ResizableSheetSample: View {
    @State var showSheet: Bool = false
    @State var detentState: PresentationDetent = .large
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Click me")
        }
        .sheet(isPresented: $showSheet) {
            MyCustomeView(detentState: $detentState)
                .presentationDetents([.fraction(0.3), .large, .medium, .height(600)], selection: $detentState)
            
            
//                .presentationDetents([.fraction(0.3), .large, .medium, .height(130)])
//                .presentationDragIndicator(.visible)
//                .interactiveDismissDisabled()
                
        }
    }
}

struct MyCustomeView: View {
    @Binding var detentState: PresentationDetent
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            
            VStack(spacing: 30) {
                Button("large") {
                    detentState = .large
                }
                
                Button("medium") {
                    detentState = .medium
                }
                
                Button("height") {
                    detentState = .height(600)
                }
                
                Button("fraction") {
                    detentState = .fraction(0.3)
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct ResizableSheetSample_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetSample()
    }
}
