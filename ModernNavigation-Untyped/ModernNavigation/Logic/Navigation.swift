//
//  Navigation.swift
//  ModernNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import Foundation
import SwiftUI

final class Navigation: ObservableObject {
    @Published var path: NavigationPath = .init()
    
    func popToRoot() {
        path = .init()
    }
}
