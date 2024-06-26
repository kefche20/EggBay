//
//  ProductDetail.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 4.03.24.
//

import SwiftUI

struct ProductDetail: View {
    @Environment(ModelData.self) var modelData
    var product: Product
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(product.kind)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Button ("Order") {
                        print("Order")
                    }.buttonStyle(.borderedProminent)
                }.padding(.bottom, 10)
              
                
                Text(product.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Image(product.photoURL)
                    .resizable()
                    .frame(maxWidth: .infinity ,maxHeight: 150)
                    .cornerRadius(5)
                
                Spacer()
                
                ForEach(modelData.farms.filter { $0.ID == product.shopID }, id: \.self) { farm in
                    HStack {
                        LargeBlock(location: farm.location, shopname: farm.name, description: farm.description, photoURL: farm.photoURL)
                    }
                }
            }
            .scaledToFit()
            .padding(0)
        }
        .padding()
    }
}
