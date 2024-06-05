//
//  ChildView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ChildAView: View {
    @State private var title = "Child A"
    
    var body: some View {
        VStack {
            Image(systemName: "a.square")
                .font(.system(size: 80))
                .foregroundStyle(.yellow)
            
            Text("This is the Child A View")
                .foregroundStyle(.primary)
                .padding()
        }
        .navigationTitle($title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ChildAView()
    }
}
