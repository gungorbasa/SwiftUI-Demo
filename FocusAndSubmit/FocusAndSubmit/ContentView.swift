//
//  ContentView.swift
//  FocusAndSubmit
//
//  Created by Gungor Basa on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    enum AddressField{
        case streetName
        case city
        case state
        case zipCode
    }
    
    @State private var streetName = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    
    @FocusState private var currentFocus: AddressField?
    
    var body: some View {
        VStack {
            TextField("Address", text: $streetName)
                .focused($currentFocus, equals: .streetName)
                .submitLabel(.next)
            
            TextField("City", text: $city)
                .focused($currentFocus, equals: .city)
                .submitLabel(.next)
            
            TextField("State", text: $state)
                .focused($currentFocus, equals: .state)
                .submitLabel(.next)
            
            TextField("Zip Code", text: $zipCode)
                .focused($currentFocus, equals: .zipCode)
                .submitLabel(.done)
            
        }
        .onSubmit {
            switch currentFocus {
            case .streetName:
                currentFocus = .city
            case .city:
                currentFocus = .state
            case .state:
                currentFocus = .zipCode
            default:
                print("Thanks for providing your address")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
