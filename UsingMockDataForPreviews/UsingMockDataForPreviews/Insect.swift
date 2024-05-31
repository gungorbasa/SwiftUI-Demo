//
//  Insect.swift
//  UsingMockDataForPreviews
//
//  Created by Gungor Basa on 5/30/24.
//

import Foundation

struct Insect: Identifiable, Decodable {
    let id: Int
    let imageName: String
    let name: String
    let habitat: String
    let description: String
}
