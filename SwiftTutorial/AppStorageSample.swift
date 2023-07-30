//
//  AppStorageSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/29.
//

import SwiftUI

struct AppStorageSample: View {
    @AppStorage("name") var currentName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentName ?? "Add New Name")
            
            Button("Add") {
                currentName = "Kare"
            }
        }
    }
}

struct AppStorageSample_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageSample()
    }
}
