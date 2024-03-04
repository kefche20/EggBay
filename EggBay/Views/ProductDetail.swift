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
        Text(product.kind)
    }
}

//#Preview {
//    ProductDetail()
//}
