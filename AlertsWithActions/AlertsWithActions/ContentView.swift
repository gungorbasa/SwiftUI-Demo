//
//  ContentView.swift
//  AlertsWithActions
//
//  Created by Gungor Basa on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var changeText = false
    @State private var displayedText = "Tap To Change Text"
    
    var body: some View {
        Button(displayedText) {
            changeText = true
        }.alert("Changing Text", isPresented: $changeText) {
            Button("Yes", role: .destructive) {
                displayedText = displayedText == "Stay Foolish" ? "Stay Hungry" : "Stay Foolish"
            }
            
            Button("Do Nothing", role: .cancel){}
        } message: {
            Text("Do you want to change the text?")
        }
    }
}

#Preview {
    ContentView()
}
