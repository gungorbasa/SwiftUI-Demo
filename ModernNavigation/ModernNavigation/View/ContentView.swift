//
//  ContentView.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var navigation = Navigation()
    @StateObject private var storage = Storage(food: Food.samples, recents: [])
    
    var body: some View {
        NavigationStack(path: $navigation.path) {
            List(Category.allCases) { category in
                Section(category.name) {
                    ForEach(storage.food(in: category)) { food in
                        NavigationLink(value: food) {
                            FoodRowView(food: food)
                        }
                    }
                }
            }
            .navigationTitle("My Food")
            .navigationDestination(for: Food.self) { food in
                FoodView(food: food)
                    .environmentObject(navigation)
                    .environmentObject(storage)
            }
        }
    }
}

#Preview {
    ContentView()
}
