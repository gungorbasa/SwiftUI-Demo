//
//  SheetView.swift
//  SheetWithNavBar
//
//  Created by Gungor Basa on 6/5/24.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            Text("This is the sheet we want to display")
        }
    }
}

#Preview {
    SheetView()
}
