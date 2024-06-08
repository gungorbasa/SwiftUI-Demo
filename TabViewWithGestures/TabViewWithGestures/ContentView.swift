//
//  ContentView.swift
//  TabViewWithGestures
//
//  Created by Gungor Basa on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    enum Tabs: String {
        case left, right
    }
    
    @State private var selectedTab = Tabs.left
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Left Tab. Tap to switch to right")
                .onTapGesture {
                    selectedTab = .right
                }
                .tabItem {
                    Label("Left", systemImage: "l.circle.fill")
                }
                .tag(Tabs.left)
            
            Text("Right Tab. Tap to switch to left")
                .onTapGesture {
                    selectedTab = .left
                }
                .tabItem {
                    Label("Right",systemImage: "r.circle.fill")
                }
                .tag(Tabs.right)
        }
    }
}

#Preview {
    ContentView()
}
