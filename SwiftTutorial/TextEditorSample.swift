//
//  TextEditorSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/25.
//

import SwiftUI

struct TextEditorSample: View {
    @State var textEditorText: String = ""
    @State var resultText: String = ""
    
    var color = #colorLiteral(red: 0.9490196078, green: 0.9450980392, blue: 0.9607843137, alpha: 1)
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(height: 240)
                    .colorMultiply(Color(uiColor: color))
                    .cornerRadius(10)
                
                Button {
                    resultText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(10))
                }
                
                Text(resultText)
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("TextEditor sample")
        }
    }
}

struct TextEditorSample_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorSample()
    }
}
