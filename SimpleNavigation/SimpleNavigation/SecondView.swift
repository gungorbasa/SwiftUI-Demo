//
//  SecondView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Image(systemName: "square")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            
            Text("This is The Second View")
                .foregroundStyle(.primary)
                .padding()
            
            List {
                NavigationLink("Show Child A") {
                    ChildAView()
                }
                
                NavigationLink("Show Child B") {
                    ChildBView()
                }
            }
            .listStyle(.inset)
            .frame(height: 160)
        }
        .padding()
        .navigationTitle("Second")
    }
}

#Preview {
    NavigationStack {
        SecondView()
    }
}
