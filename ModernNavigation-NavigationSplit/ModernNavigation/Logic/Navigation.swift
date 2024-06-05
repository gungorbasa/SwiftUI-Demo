//
//  Navigation.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import Foundation

final class Navigation: ObservableObject {
    @Published var path = [Food]()
    
    func popToRoot() {
        path = .init()
    }
}
