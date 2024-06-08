//
//  CurrenciesView.swift
//  UsingTabViews
//
//  Created by Gungor Basa on 6/8/24.
//

import SwiftUI

struct CurrenciesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(Currency.currencies, id: \.id) { currency in
                    HStack {
                        Text(currency.name.localizedCapitalized)
                        Spacer()
                        Image(systemName: currency.image)
                    }
                    .font(Font.system(size: 32, design: .default))
                    .padding()
                }
            }
            .navigationTitle("Currencies")
        }
    }
}

#Preview {
    CurrenciesView()
}
