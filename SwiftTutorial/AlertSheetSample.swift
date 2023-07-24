//
//  AlertSheetSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/21.
//

import SwiftUI

struct AlertSheetSample: View {
    
    @State var showSheet: Bool = false
    @State var type: confirmationDialogType = .myProfile
    
    enum confirmationDialogType {
        case myProfile
        case more
    }
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button {
                        type = .myProfile
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "camera.macro.circle")
                            .foregroundColor(Color.black)
                    }
                    
                    Text("SwiftUI tutorail")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Button {
                        type = .more
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color.black)
                    }
                }
                .padding(.horizontal)
                
                Rectangle()
                    .fill(Color.mint)
                    .frame(maxWidth: .infinity, maxHeight: 300)
            }
            .confirmationDialog("sss", isPresented: $showSheet, actions: sheetContentView, message: sheetTitleView)
        }
    }
    
    func sheetContentView() -> some View {
        VStack {
            switch type {
                case .more:
                    Button("Cut", action: {})
                    Button("Past", action: {})
                    Button(role: .destructive, action: {}) {
                        Text("Delete")
                    }
            case .myProfile:
                Button("Cut", action: {})
                Button("Past", action: {})
            }
        }
    }
    
    func sheetTitleView() -> some View {
        VStack {
            switch type {
            case .more:
                Text("More operations")
            case .myProfile:
                Text("This is Myprofile")
            }
        }
    }
}

struct AlertSheetSample_Previews: PreviewProvider {
    static var previews: some View {
        AlertSheetSample()
    }
}
