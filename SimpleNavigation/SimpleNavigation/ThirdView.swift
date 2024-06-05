//
//  ThirdView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ThirdView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            Image(systemName: "triangle")
                .font(.system(size: 80))
                .foregroundStyle(.teal)
            
            Text("This is the Third View")
                .foregroundStyle(.primary)
                .padding()
        }
        .padding()
        .navigationTitle("Third")
        .toolbarBackground(.quaternary, for: .navigationBar)
        .navigationBarBackButtonHidden()
        .toolbar {
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    NavigationStack {
        ThirdView()
    }
}
