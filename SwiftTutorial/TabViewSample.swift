//
//  TableViewSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/28.
//

import SwiftUI

struct TabViewSample: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView(selectedTab: $selectedTab)
                .badge(2)
                .tabItem {
                    Image(systemName: "house")
                    Text("首页")
                }
                .tag(0)
            
            Text("📚大全")
                .tabItem {
                    Image(systemName: "book.closed")
                    Text("书籍")
                }
                .tag(1)
            
            ZStack {
                Color.blue
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    Text("设置")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            .badge("!")
            .tabItem {
                Image(systemName: "gear")
                Text("设置")
            }
            .tag(2)
        }
        .tint(Color.purple)
        .tabViewStyle(.page)
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

struct TabViewSample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSample()
    }
}
