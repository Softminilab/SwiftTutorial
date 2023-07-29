//
//  GestureSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/29.
//

import SwiftUI

struct GestureSample: View {
    
    @State var changeBackground: Bool = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(changeBackground ? Color.blue : Color.purple)
                .frame(maxWidth: .infinity, maxHeight: 200)
            
            Button {
                changeBackground.toggle()
            } label: {
                Text("Button action".uppercased())
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.cornerRadius(10.0))
            }
            
            Text("Gesture tap".uppercased())
                .foregroundColor(Color.white)
                .font(.headline)
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue.cornerRadius(10.0))
                .onTapGesture {
                    
                }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct GestureSample_Previews: PreviewProvider {
    static var previews: some View {
        GestureSample()
    }
}
