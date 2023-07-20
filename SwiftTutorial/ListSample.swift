//
//  ListSample.swift
//  SwiftTutorial
//
//  Created by 0x2ab70001b1 on 2023/7/20.
//

import SwiftUI

struct ListSample: View {
    @State var fruits: [String] = [
        "🍎", "🍊", "🍇", "🍓"
    ]
    
    var vegetables: [String] = [
        "🥦", "🥒", "🧅", "🥬"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) {  fruit  in
                        HStack {
                            Text(fruit)
                                .frame(width: 50, height: 50)
                                .font(.title)
                                .background(
                                    Circle()
                                        .fill(Color.green.opacity(0.3))
                                )
                            Text("\(Int.random(in: 1..<10)) kg")
                                .font(.subheadline)
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.green.opacity(0.1))
                } header: {
                    HStack {
                        Text("🥑")
                        Text("fruit".capitalized)
                            .foregroundColor(Color.black)
                        
                        Text("(\(fruits.count))")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                } footer: {
                    Text("🦶 fruit")
                }

                Section {
                    ForEach(vegetables, id: \.self) {  vegetable  in
                        HStack {
                            Circle()
                                .fill(Color.yellow.opacity(0.3))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Text(vegetable)
                                        .font(.title)
                                )
                            Text("\(Int.random(in: 1..<10)) kg")
                                .font(.subheadline)
                        }
                    }
                    .listRowBackground(Color.yellow.opacity(0.1))
                } header: {
                    HStack {
                        Text("🥕")
                        Text("vegetable".capitalized)
                            .foregroundColor(Color.black)
                        
                        Text("(\(vegetables.count))")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                } footer: {
                    Text("🦶 vegetable")
                }
            }
//            .listStyle(.automatic)
//            .listStyle(.sidebar)
//            .listStyle(.insetGrouped)
//            .listStyle(.grouped)
//            .listStyle(.inset)
//            .listStyle(.plain)
            .navigationTitle(Text("Grocery list"))
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        fruits.append("🥝")
                    }
                }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, index: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
}

struct ListSample_Previews: PreviewProvider {
    static var previews: some View {
        ListSample()
    }
}
