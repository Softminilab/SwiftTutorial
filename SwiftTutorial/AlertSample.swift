//
//  AlertSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/21.
//

import SwiftUI

struct AlertSample: View {
    @State private var showAlert: Bool = false
    @State private var backgronudColor: Color = .white
    
//    @State var name: String = ""
    
    var body: some View {
        ZStack {
            backgronudColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Alert Button") {
//                    name = "狂徒东北吴彦祖"
                    showAlert.toggle()
                }
                .foregroundColor(Color.black)
            }
//            .alert("Message", isPresented: $showAlert) {
//                contentView
//            }
//            .alert(
//                "Message",
//                isPresented: $showAlert,
//                presenting: name
//            ) { str in
//                Button(role: .cancel) {} label: {
//                    Text("取消")
//                }
//                Button(role: .destructive) {
//                    backgronudColor = .red
//                } label: {
//                    Text("拉黑")
//                }
//            } message: { str in
//                Text("你去确定要拉黑\(name)吗？")
//            }
        }
    }
    
    var contentView: some View {
        VStack {
            Button(role: .cancel, action: {}) {
                Text("dd")
            }
        }
    }
}

struct AlertSample_Previews: PreviewProvider {
    static var previews: some View {
        AlertSample()
    }
}
