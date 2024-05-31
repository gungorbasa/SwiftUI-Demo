//
//  ContentView.swift
//  MultiColumnTable
//
//  Created by Gungor Basa on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    static let keypathComparator = KeyPathComparator(\City.population, order: .reverse)
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    private var isCompact: Bool { horizontalSizeClass == .compact }
    
    @State private var cities = City.top20USCities.sorted(using: keypathComparator)
    @State private var selection = Set<City.ID>()
    @State private var sortOrders: [KeyPathComparator] = [
        KeyPathComparator(\City.population, order: .reverse),
        KeyPathComparator(\City.state),
        KeyPathComparator(\City.name),
        KeyPathComparator(\City.area, order: .reverse)
    ]
    
    var body: some View {
        NavigationStack {
            Table(cities, selection: $selection, sortOrder: $sortOrders) {
                TableColumn("Name", value: \.name) { city in
                    if isCompact {
                        CityRowView(city: city)
                    } else {
                        Text(city.name)
                    }
                }
                TableColumn("State", value: \.state)
                TableColumn("Population", value: \.population) {
                    Text($0.formattedPopulation)
                        .font(.body.monospacedDigit())
                        .frame(minWidth: 100, alignment: .trailing)
                }
                .width(max: 150)
                
                TableColumn("Area", value: \.area) {
                    Text($0.formattedArea)
                        .font(.body.monospacedDigit())
                        .frame(minWidth: 100, alignment: .trailing)
                }
                .width(max: 150)
            }
            .onChange(of: sortOrders, { _, newValue in
                cities.sort(using: newValue)
            })
            .onChange(of: selection) {
                print("Selected = { \(Array(selection).sorted().joined(separator: " |")) }")
            }
            .navigationTitle("Top 20 US Cities")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
