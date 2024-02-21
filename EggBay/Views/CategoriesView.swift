//
//  CategoriesView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("product 1")
                Text("product 2")
                Text("product 3")
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
}
