//
//  HomeView.swift
//  UsingTabViews
//
//  Created by Gungor Basa on 6/8/24.
//

import SwiftUI

struct HomeView: View {
    let games = ["Doom", "Final F","Cyberpunk", "avengers", "animal", "trivia", "sudoku", "snakes and ladders", "Power rangers", "ultimate frisbee", "football", "soccer", "much more"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(games, id: \.self) { game in
                    Text(game.capitalized(with: .current))
                        .padding()
                }
            }
            .navigationTitle("Best Games of 2024")
        }
    }
}

#Preview {
    HomeView()
}
