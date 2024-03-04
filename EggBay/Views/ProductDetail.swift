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
            Image(product.photoURL)
                .resizable()
                .frame(height: 150)
                .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text(product.kind)
                             .font(.title)
                             .fontWeight(.bold)

                Text(product.description)
                             .font(.body)
                             .foregroundColor(.secondary)
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
