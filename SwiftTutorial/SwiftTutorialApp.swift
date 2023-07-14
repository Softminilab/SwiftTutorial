//
//  SwiftTutorialApp.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/6/28.
//

import SwiftUI

@main
struct SwiftTutorialApp: App {
    init() {
        getDynamicLibrarySizes()
    }
    
    var body: some Scene {
        WindowGroup {
            TextSample()
        }
    }
}

extension SwiftTutorialApp {
    func getDynamicLibrarySizes() {
        let fileURL = Bundle.main.url(forResource: "dynamic_library_sizes", withExtension: "txt")
        guard let filePath = fileURL?.path else {
            print("Failed to find dynamic_library_sizes.txt file.")
            return
        }
        
        do {
            let sizesString = try String(contentsOfFile: filePath, encoding: .utf8)
            let sizes = sizesString.components(separatedBy: .newlines)
            
            for sizeString in sizes {
                let components = sizeString.components(separatedBy: " ")
                if components.count == 2 {
                    let libraryName = components[0]
                    let librarySize = components[1]
                    print("Dynamic Library: \(libraryName), Size: \(librarySize) bytes")
                }
            }
        } catch {
            print("Failed to read dynamic_library_sizes.txt file: \(error)")
        }
    }
}
