//
//  ChildBView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ChildBView: View {
    var body: some View {
        VStack {
            Image(systemName: "b.square")
                .font(.system(size: 80))
                .foregroundStyle(.red)
            
            Text("This is the Child B View")
                .foregroundStyle(.primary)
                .padding()
        }
        .navigationTitle("Child B")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ChildBView()
    }
}
