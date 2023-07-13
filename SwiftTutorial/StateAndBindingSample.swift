//
//  StateaAndBindingSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/13.
//

import SwiftUI

struct StateAndBindingSample: View {
    
    @State var backgroundColor: Color = .mint
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct StateAndBindingSample_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingSample()
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var title: String = "未点击"
    
    var body: some View {
        Button {
            backgroundColor = Color.yellow
            title = "已完成"
        } label: {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(Color.black)
                .cornerRadius(10)
        }
    }
}
