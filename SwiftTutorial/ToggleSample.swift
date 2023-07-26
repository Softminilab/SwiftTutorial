//
//  ToggleSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/25.
//

import SwiftUI

struct ToggleSample: View {
    @State var toggleIsOn: Bool = false
    @State var isShuffling: Bool = false
    @State var isRepeating: Bool = false
    @State var isEnhanced: Bool = false
    
    var body: some View {
        VStack {
            
//            Toggle("Enhance Sound", isOn: $toggleIsOn)
//                .toggleStyle(.button)

            
//            Toggle(toggleIsOn ? "White" : "Dark", isOn: $toggleIsOn)
//            HStack {
//                Text("Status:")
//                Text(toggleIsOn ? "Online" : "OffLine")
//            }
//            .font(.title)

            Toggle(isOn: $toggleIsOn, label: {
                Text("Change statue")
            })
            .toggleStyle(SwitchToggleStyle(tint: .purple))

            Toggle(isOn: $isShuffling) {
                Label("Shuffle", systemImage: "shuffle")
            }

            Toggle(isOn: $isRepeating) {
                Label("Repeat", systemImage: "repeat")
            }

            Toggle("Enhance Sound", isOn: $isEnhanced)
                .toggleStyle(.button)
                .padding()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleSample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSample()
    }
}
