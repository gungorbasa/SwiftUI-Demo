//
//  CityRowView.swift
//  MultiColumnTable
//
//  Created by Gungor Basa on 5/31/24.
//

import SwiftUI

struct CityRowView: View {
    var city: City
    
    var body: some View {
        VStack(alignment: .leading) {
            LabeledContent {
                Text(city.state)
            } label: {
                Text(city.name)
                    .font(.title)
            }
            
            LabeledContent("Population") {
                Text(city.formattedPopulation)
                    .font(.body.monospacedDigit())
            }
            
            LabeledContent("Area") {
                Text(city.formattedArea)
                    .font(.body.monospacedDigit())
            }
        }
    }
}

#Preview {
    CityRowView(city: City.top20USCities.first!)
        .padding()
}
