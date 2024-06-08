//
//  ContentView.swift
//  UsingTabViews
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            CurrenciesView()
                .tabItem { Label("Currencies", systemImage: "coloncurrencysign.circle.fill") }
        }
        .tabViewStyle(.automatic)
    }
}

#Preview {
    ContentView()
}
