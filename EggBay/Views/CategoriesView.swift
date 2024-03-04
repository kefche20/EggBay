//
//  CategoriesView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(modelData.products, id: \.self) { product in
                    NavigationLink {
                        ProductDetail(product: product)
                    } label: {
                        ProductRow(product: product)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoriesView()
        .environment(ModelData())
}
