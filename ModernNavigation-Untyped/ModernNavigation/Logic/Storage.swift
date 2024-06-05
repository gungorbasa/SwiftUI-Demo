//
//  Storage.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import Foundation

final class Storage: ObservableObject {
    @Published var food: [Food]
    @Published var recents: [Food]
    @Published var favorites: [Food]
    
    init(food: [Food], recents: [Food] = [], favorites: [Food] = []) {
        self.food = food
        self.recents = recents
        self.favorites = favorites
    }
    
    func food(in category: Category) -> [Food] {
        food.filter { $0.category == category }
            .sorted { $0.name < $1.name }
    }
    
    func addRecent(_ food: Food) {
        if !recents.contains(food) {
            recents = [food] + Array(recents.prefix(2))
        }
    }
    
    func isFavorite(food: Food) -> Bool {
        favorites.contains(food)
    }
    
    func toggleFavorite(food: Food) {
        if isFavorite(food: food) {
            favorites.removeAll { $0.id == food.id}
        } else {
            favorites.append(food)
        }
    }
}
