//
//  SheetSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/18.
//

import SwiftUI

struct SheetSample: View {
    @State var showFirstSheet: Bool = false
    @State var showSecondSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Button {
                    showFirstSheet.toggle()
                } label: {
                    Text("first")
                        .foregroundColor(Color.black)
                        .font(.headline)
                        .frame(width: 80, height: 50)
                        .background(Color.white.cornerRadius(10))
                }
                
                Button {
                    showSecondSheet.toggle()
                } label: {
                    Text("Second")
                        .foregroundColor(Color.black)
                        .font(.headline)
                        .frame(width: 80, height: 50)
                        .background(Color.white.cornerRadius(10))
                }
            }
            .fullScreenCover(isPresented: $showFirstSheet) {
                FirstScreen()
            }
            .fullScreenCover(isPresented: $showSecondSheet) {
                SecondScreen(isPresented: $showSecondSheet)
            }
        }
    }
}

struct SecondScreen: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .top) {
                Spacer()
                Button {
                    isPresented.toggle()
                } label: {
                    Text("CLOSED")
                        .foregroundColor(Color.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white.cornerRadius(10))
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

struct FirstScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .top) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.white)
                        .padding(20)
                        .font(.headline)
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

struct SheetSample_Previews: PreviewProvider {
    static var previews: some View {
        SheetSample()
//        SecondScreen()
    }
}
