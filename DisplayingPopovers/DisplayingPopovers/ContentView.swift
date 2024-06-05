//
//  ContentView.swift
//  DisplayingPopovers
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

// Popover will make more sense on iPad
// On iPhone, it just presents a view
struct ContentView: View {
    @State private var showPopover = false
    
    var body: some View {
        Button("Show Popover") {
            showPopover = true
        }
        .popover(isPresented: $showPopover) {
            Text("Popover Content Displayed Here")
                .font(.system(size: 20))
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
