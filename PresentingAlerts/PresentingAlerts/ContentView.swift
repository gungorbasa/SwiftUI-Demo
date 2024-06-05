//
//  ContentView.swift
//  PresentingAlerts
//
//  Created by Gungor Basa on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSubmitAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showSubmitAlert = true
        }
        .padding()
        .alert("Confirm Actions", isPresented: $showSubmitAlert) {
            Button("OK") {}
        } message: {
            Text("Are you sure you want to proceed?")
        }
        .onChange(of: showSubmitAlert) { oldValue, newValue in
            print(oldValue, newValue)
        }
    }
}

#Preview {
    ContentView()
}
