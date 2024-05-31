//
//  PostView.swift
//  CanvasPreview
//
//  Created by Gungor Basa on 5/30/24.
//

import SwiftUI

struct PostView: View {
    var title: String
    var text: String
    var imageName: String
    
    var body: some View {
        GeometryReader { reader in
            ScrollView {
                if reader.size.height > reader.size.width {
                    VStack(spacing: 20) {
                        Image(systemName: imageName)
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: reader.size.width * 0.75)
                        
                        VStack(alignment: .leading) {
                            Text(title)
                                .font(.title2)
                                .padding(.top)
                            
                            Text(text)
                                .padding(.top)
                        }
                    }
                    .padding()
                } else {
                    HStack(alignment: .top, spacing: 20) {
                        Image(systemName: imageName)
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: reader.size.height * 0.55)
                        
                        VStack(alignment: .leading) {
                            Text(title)
                                .font(.title2)
                                .padding(.top)
                            
                            Text(text)
                                .padding(.top)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview("PostView") {
    PostView(
        title: "Weather Podcast",
        text: "Scattered thundersorms. Potential for heavy rainfall. Low 68F. Winds light and wariable. Chance of rain 60%",
        imageName: "cloud.bolt.rain"
    )
}
