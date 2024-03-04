//
//  ProductDetail.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 4.03.24.
//

import SwiftUI

struct ProductDetail: View {
    var product: Product
    
    var body: some View {
        ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text(product.kind)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(product.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    Image(product.photoURL)
                        .resizable()
                        .frame(maxWidth: .infinity ,maxHeight: 150)
                        .cornerRadius(5)
                }
                .padding()
        }
    }
}

#Preview {
    let products = ModelData().products
    return Group {
        ProductDetail(product: products[0])
    }
}
