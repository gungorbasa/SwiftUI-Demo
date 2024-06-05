//
//  ContentView.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var storage = Storage(food: Food.samples, recents: [])
    
    @State var selectedCategory: Category?
    @State var selectedFood: Food?
    @State private var columnVisibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(selection: $selectedCategory) {
                ForEach(Category.allCases) { category in
                    NavigationLink(category.name, value: category)
                }
            }
            .navigationTitle("Categories")
        } content: {
            FoodCategoryView(selectedCategory: $selectedCategory, selectedFood: $selectedFood)
                .environmentObject(storage)
                .onChange(of: selectedCategory, initial: false) {
                    columnVisibility = .doubleColumn
                }
        } detail: {
            FoodView(selectedCategory: $selectedCategory, selectedFood: $selectedFood)
                .environmentObject(storage)
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
