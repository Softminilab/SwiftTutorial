//
//  ViewModelSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/29.
//

import SwiftUI

struct FruitModel: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = true
    
    init() {
        getFruits()
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func getFruits() {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            let appleFruit = FruitModel(name: "Apples", count: 3)
            let orangeFruit = FruitModel(name: "Orange", count: 1)
            let watermelonFruit = FruitModel(name: "Watermelon", count: 1)
            let bananaFruit = FruitModel(name: "Banana", count: 19)
            
            self.fruits.append(appleFruit)
            self.fruits.append(orangeFruit)
            self.fruits.append(watermelonFruit)
            self.fruits.append(bananaFruit)
            
            self.isLoading = false
        })
    }
}

struct ViewModelSample: View {
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                
                ForEach(fruitViewModel.fruits, id: \.self) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .font(.subheadline)
                        
                        Text(fruit.name)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .frame(height: 45)
                }
                .onDelete(perform: fruitViewModel.delete(indexSet:))
            }
            .listStyle(.grouped)
            .navigationTitle("Shopping list")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    NavigationLink(
                        destination: AnalyzeView(fruitViewModel: fruitViewModel)
                    ) {
                        Image(systemName: "cellularbars")
                    }
                })
            }
        }
    }
}

struct AnalyzeView: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("\(fruitViewModel.fruits.count)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .underline()
                    .foregroundColor(.white)
                
                Text("Total count")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .padding(40)
            .background(Color.blue.cornerRadius(10))
        }
    }
}

struct ViewModelSample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelSample()
    }
}
