//
//  FirstView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .font(.system(size: 80))
                .foregroundStyle(.cyan)
            
            Text("This is the First View")
                .foregroundStyle(.primary)
                .padding()
            
            VStack(spacing: 20) {
                NavigationLink("Show Child A") {
                    ChildAView()
                }
                
                NavigationLink("Show Child B") {
                    ChildBView()
                }
            }
        }
        .padding()
        .navigationTitle("First")
    }
}

#Preview {
    NavigationStack {
        FirstView()
    }
}
