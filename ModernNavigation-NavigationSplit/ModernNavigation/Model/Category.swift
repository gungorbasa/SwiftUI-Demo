//
//  Category.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import Foundation

enum Category: Int, Identifiable, CaseIterable, Hashable {
    case meat
    case vegetable
    case fruit
    
    var id: Int { rawValue }
    var name: String {
        switch self {
        case .meat: "Meat"
        case .vegetable: "Vegetable"
        case .fruit: "Fruit"
        }
    }
}
