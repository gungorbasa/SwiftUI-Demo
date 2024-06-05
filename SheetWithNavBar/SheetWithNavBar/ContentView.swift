//
//  ContentView.swift
//  SheetWithNavBar
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSheetPresented = false
    @State private var isSheetWithNavPresented = false
    @State private var isCoverPresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Try me!") {
                print("Try me!")
            }
            .padding(.bottom, 200)
            
            Button("Show Sheet") {
                isSheetPresented = true
            }.sheet(isPresented: $isSheetPresented) {
                SheetView()
                    .presentationDragIndicator(.visible)
            }
            
            Button("Show Sheet With Navigation Bar") {
                isSheetWithNavPresented = true
            }.sheet(isPresented: $isSheetWithNavPresented) {
                print("Sheet Dismissed!")
            } content: {
                SheetWithNavBar(text: "Sheet with navigation bar and presentation detents")
                    .presentationDetents([.medium, .large])
                    .presentationBackgroundInteraction(.enabled)
            }
            
            Button("Show Cover") {
                isCoverPresented = true
            }.fullScreenCover(isPresented: $isCoverPresented) {
                SheetWithNavBar(text: "Full screen cover with navigation bar")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
