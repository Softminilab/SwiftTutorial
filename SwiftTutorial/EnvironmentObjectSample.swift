//
//  EnvironmentObjectSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/29.
//

import SwiftUI

class EnvrionmentObjectViewModel: ObservableObject {
    @Published var languages: [String] = []
    
    init() {
        getLanguages()
    }
    
    func getLanguages() {
        languages.append(contentsOf: ["iOS", "Golang", "Java", "C++", ".Net"])
    }
}

struct EnvironmentObjectSample: View {
    @StateObject var envrionmentViewModel: EnvrionmentObjectViewModel = EnvrionmentObjectViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(envrionmentViewModel.languages, id: \.self) { item in
                    NavigationLink {
                        DetailsView(title: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Envrionment Object")
        }
        .tint(Color.black)
        .environmentObject(envrionmentViewModel)
    }
}

struct DetailsView: View {
//    @ObservedObject var envrionmentViewModel: EnvrionmentObjectViewModel
    var title: String
    
    var body: some View {
        ZStack {
            Color.mint.edgesIgnoringSafeArea(.all)
            
            NavigationLink {
                OtherView()
            } label: {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.mint)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white.cornerRadius(25.0))
            }
        }
    }
}

struct OtherView: View {
//    @ObservedObject var envrionmentViewModel: EnvrionmentObjectViewModel
    @EnvironmentObject var envrionmentViewModel: EnvrionmentObjectViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.gray, Color.blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(envrionmentViewModel.languages, id: \.self) { item in
                    Text(item)
                        .font(.title2)
                        .foregroundColor(Color.white)
                }
            }
        }
    }
}

struct EnvironmentObjectSample_Previews: PreviewProvider {
    static var previews: some View {
            EnvironmentObjectSample()
//        DetailsView(envrionmentViewModel: EnvrionmentObjectViewModel(), title: "Java")
//        OtherView(envrionmentViewModel: EnvrionmentObjectViewModel())
    }
}
