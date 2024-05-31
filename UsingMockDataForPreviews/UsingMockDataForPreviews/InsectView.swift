//
//  InsectView.swift
//  UsingMockDataForPreviews
//
//  Created by Gungor Basa on 5/30/24.
//

import SwiftUI

struct InsectView: View {
    let insect: Insect
    
    var body: some View {
        HStack {
            Image(insect.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Rectangle())
                .frame(width: 100, height: 80)
            
            VStack(alignment: .leading) {
                Text(insect.name)
                    .font(.title)
                
                Text(insect.habitat)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    let insect = Insect(
        id: 1,
        imageName: "honeybee",
        name: "Honey bee",
        habitat: "Tropical climates",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id volutpat lacus laoreet non curabitur gravida arcu ac. Felis imperdiet proin fermentum leo vel. Et netus et malesuada fames. Amet nisl suscipit adipiscing bibendum est ultricies integer."
    )
    
    return InsectView(insect: insect)
}
