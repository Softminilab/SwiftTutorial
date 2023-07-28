//
//  TableViewSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/28.
//

import SwiftUI

struct TabView2Sample: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $selectedTab) {
                MainView(selectedTab: $selectedTab)
                    .tag(0)
                
                Text("📚大全")
                    .tag(1)
                
                Text("设置")
                    .tag(2)
            }
            .tabViewStyle(.page)
        }
    }
}

fileprivate struct MainView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            Text("首页")
                .font(.title)
                .fontWeight(.semibold)
            Button(action: {
                selectedTab = 2
            }, label: {
                Text("切换到setting tab")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.purple.cornerRadius(10))
            })
        }
    }
}

struct TabView2Sample_Previews: PreviewProvider {
    static var previews: some View {
        TabView2Sample()
    }
}
