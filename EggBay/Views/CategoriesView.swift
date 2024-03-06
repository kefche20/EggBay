//
//  CategoriesView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(ModelData.self) var modelData
    
    var productGroups: [ProductGroup] {
           [
               ProductGroup(groupName: "Vegetables", products: modelData.products.filter { $0.category == "Vegetables" }),
               ProductGroup(groupName: "Fruit", products: modelData.products.filter { $0.category == "Fruit" }),
               ProductGroup(groupName: "Meat", products: modelData.products.filter { $0.category == "Meat" }),
               ProductGroup(groupName: "Dairy", products: modelData.products.filter { $0.category == "Dairy" }),
           ]
       }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(productGroups, id: \.self) { productGroup in
                    Section(header: Text(productGroup.groupName)) {
                        ForEach(productGroup.products, id: \.self) { product in
                            NavigationLink {
                                ProductDetail(product: product)
                            } label: {
                                ProductRow(product: product)
                            }
                        }
                    }.headerProminence(.increased)
                }
            }
        }
    }
}


//NavigationStack {
//           List {
//               ForEach(productGroups) {productGroup in
//                   Section(header: Text(productGroup.groupName)) {
//                       ForEach(modelData.products, id: \.self) { product in
//                           NavigationLink {
//                               ProductDetail(product: product)
//                           } label: {
//                               ProductRow(product: product)
//                           }
//                       }
//                   }

#Preview {
    CategoriesView()
        .environment(ModelData())
}
