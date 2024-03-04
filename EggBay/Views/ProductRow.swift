//
//  ProductRow.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 22.02.24.
//

import SwiftUI

struct ProductRow: View {
    var product: Product
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(product.kind)
            }
            Spacer()
            Image(product.photoURL)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
        }.fontWeight(.bold)
    }
}

#Preview {
    let products = ModelData().products
    return Group {
        ProductRow(product: products[0])
    }
}
