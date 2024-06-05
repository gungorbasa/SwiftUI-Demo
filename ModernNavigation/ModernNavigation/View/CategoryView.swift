//
//  CategoryView.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    var color: Color {
        switch category {
        case .meat: .red
        case .vegetable: .green
        case .fruit: .yellow
        }
    }
    
    var body: some View {
        Text(category.name)
            .foregroundStyle(.white)
            .padding(.all, 8)
            .background(color)
            .clipShape(Capsule())
    }
}

#Preview("Meat") {
    CategoryView(category: .meat)
}

#Preview("Vegetable") {
    CategoryView(category: .vegetable)
}

#Preview("Fruit") {
    CategoryView(category: .fruit)
}
