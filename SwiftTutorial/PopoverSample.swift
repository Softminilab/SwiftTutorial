//
//  PopoverSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/18.
//

import SwiftUI

struct PopoverSample: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                } label: {
                    Text("BUTTON")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                }
            }
            
            // METHOD - 1: transition
//            ZStack {
//                if showView {
//                    NewScreen(isPresented: $showView)
//                        .padding(.top,  100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD - 2: offset
            NewScreen(isPresented: $showView)
                .padding(.top, 100)
                .offset(y: showView ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showView)
            
            // METHOD - 3: sheet
            
        }
    }
}

struct NewScreen: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.mint
                .edgesIgnoringSafeArea(.all)
            
            Button {
                isPresented.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding(10)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct PopoverSample_Previews: PreviewProvider {
    static var previews: some View {
        PopoverSample()
//        NewScreen()
    }
}
