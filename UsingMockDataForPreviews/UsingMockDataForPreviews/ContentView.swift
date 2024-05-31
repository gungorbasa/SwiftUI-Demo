//
//  ContentView.swift
//  UsingMockDataForPreviews
//
//  Created by Gungor Basa on 5/30/24.
//

import SwiftUI

struct ContentView: View {
    var insects: [Insect] = []
    
    var body: some View {
        NavigationStack {
            InsectListView(insects: insects)
                .navigationTitle("Insects")
        }
    }
}

#Preview {
    let testInsects: [Insect] = {
        guard let url = Bundle.main.url(forResource: "insectData", withExtension: "json"), let data = try? Data(contentsOf: url) else {
            return []
        }
        
        let decoder = JSONDecoder()
        return (try? decoder.decode([Insect].self, from: data)) ?? []
        
    }()
    
    return ContentView(insects: testInsects)
}
