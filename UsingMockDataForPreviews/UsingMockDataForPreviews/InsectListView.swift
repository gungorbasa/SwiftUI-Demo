//
//  InsectListView.swift
//  UsingMockDataForPreviews
//
//  Created by Gungor Basa on 5/30/24.
//

import SwiftUI

struct InsectListView: View {
    let insects: [Insect]
    
    var body: some View {
        List {
            ForEach(insects) { InsectView(insect: $0) }
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
    
    return InsectListView(insects: testInsects)
}
