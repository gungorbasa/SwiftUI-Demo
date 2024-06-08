//
//  ContentView.swift
//  BuiltInShapes
//
//  Created by Gungor Basa on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .stroke(.orange, lineWidth: 8)
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.red)
            
            UnevenRoundedRectangle(
                cornerRadii: .init(
                    topLeading: 50,
                    bottomLeading: 35,
                    bottomTrailing: 20,
                    topTrailing: 0
                ), style: .circular
            )
            .fill(.teal)
            
            Capsule(style: .continuous)
                .fill(.green)
                .frame(height: 100)
            
            Capsule(style: .circular)
                .fill(.yellow)
                .frame(height: 100)
            
            Circle()
                .strokeBorder(.blue, lineWidth: 8)
            
            Ellipse()
                .fill(.purple)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ContentView()
}
