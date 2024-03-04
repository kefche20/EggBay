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
            Image(product.photoURL)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(product.kind)
                .fontWeight(.medium)
          
            Spacer()
        }
    }
}

#Preview {
    let products = ModelData().products
    return Group {
        ProductRow(product: products[0])
    }
}

