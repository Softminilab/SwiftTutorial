//
//  TransitionSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/17.
//

import SwiftUI

struct TransitionSample: View {
    
    @State private var showMessage = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button(action: {
                    withAnimation(.spring()) {
                        self.showMessage.toggle()
                    }
                }) {
                    Text("SHOW MESSAGE")
                }
                
                Spacer()
            }
            
            if showMessage {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(AnyTransition.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionSample_Previews: PreviewProvider {
    static var previews: some View {
        TransitionSample()
    }
}
