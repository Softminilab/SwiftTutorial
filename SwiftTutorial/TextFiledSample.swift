//
//  TextFiledSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/24.
//

import SwiftUI

struct TextFiledSample: View {
    @State var name: String = ""
    @State var pwd: String = ""
    
    @State var title: String = ""
    @State var note: String = ""
    
    @State private var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }()
    
    var body: some View {
        ZStack {
            
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Log in")
                    .padding([.top])
                    .font(.title)
                    .foregroundColor(.black)
                
                TextField("username", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                    .submitLabel(.continue)
                    .onSubmit {
                        // submit
                    }
                    .onChange(of: name) { name in
                        print(name)
                    }
                
                SecureField("Password", text: $pwd)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                    .submitLabel(.done)
                
                TextField("phone number", text: $title)
                    .padding(.horizontal)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                
                TextField("Notes", text: $note, axis: .vertical)
                    .padding(.horizontal)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(3...)
                    .frame(height: 100)
                
                HStack {
                    Button {
                        submit()
                    } label: {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(Color.yellow)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
    
    func submit() {
        print(pwd)
        print(name)
    }
}

struct TextFiledSample_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledSample()
    }
}
