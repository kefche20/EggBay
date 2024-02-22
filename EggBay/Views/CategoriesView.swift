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
                ProductRow()
                ProductRow()
                ProductRow()
            }
            .listStyle(.insetGrouped)
            }
        }
    }

#Preview {
    CategoriesView()
}
