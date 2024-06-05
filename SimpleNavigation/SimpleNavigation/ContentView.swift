//
//  ContentView.swift
//  SimpleNavigation
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Show First View") {
                    FirstView()
                }
                
                NavigationLink("Show Second View") {
                    SecondView()
                }
                
                NavigationLink("Show Third View") {
                    ThirdView()
                }
                
                NavigationLink("Show Fourth View") {
                    FourthView()
                }
            }
            .navigationTitle("Top Level")
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
