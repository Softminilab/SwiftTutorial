//
//  NavigationStack.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/8/1.
//

import SwiftUI

struct NavigationStackSample: View {
    private var countries: [String] = ["China", "Japan", "France", "Korea", "United state"]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                Button {
                    path.append("UK")
                    path.append("India")
                    path.append("Philippines")
                    path.append(1000)
                } label: {
                    Text("PUSH")
                        .padding()
                }

                VStack(spacing: 40, content: {
                    ForEach(countries, id: \.self) { country in
                        NavigationLink(value: country) {
                            Text("country \(country)")
                        }
                    }
                    
                    ForEach(0..<10) { i in
                        NavigationLink(value: i) {
                            Text("Index: \(i)")
                        }
                    }
                })
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu(content: {
                Text("dd")
                Text("dd")
                Text("dd")
            })
            .navigationDestination(for: String.self, destination: { country in
                CountryView(country: country)
            })
            .navigationDestination(for: Int.self, destination: { i in
                Text("View \(i)")
            })
            .navigationTitle("NavigationStack")
        }
    }
}

struct CountryView: View {
    var country: String
    
    init(country: String) {
        self.country = country
        print("【Log】: \(country)")
    }
    
    var body: some View {
        Text(country)
    }
}

struct NavigationStackSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackSample()
    }
}
