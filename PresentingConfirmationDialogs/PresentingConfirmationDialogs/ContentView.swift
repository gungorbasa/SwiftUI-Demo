//
//  ContentView.swift
//  PresentingConfirmationDialogs
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showDialog = false
    private var title = "Confirmation Dialog"
    
    var body: some View {
        Button("Present Confirmation Dialog") {
            showDialog = true
        }.confirmationDialog(title, isPresented: $showDialog) {
            Button("Save") {
                print("Save Action")
            }
            
            Button("Print") {
                print("Print action")
            }
            
            Button("Update", role: .destructive) {
                print("Update action")
            }
        } message: {
            Text("Use Confirmation Dialogs to present several actions")
        }
    }
}

#Preview {
    ContentView()
}
