//
//  TestView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 11.04.24.
//

import SwiftUI
import MapKit

struct OrderDetail: View {
    var body: some View {
        ScrollView (showsIndicators: false) {
            LazyVStack (alignment: .leading) {
                ProgressView(value: 1) {
                    Text("Tomatoes")
                        .font(.headline)
                } currentValueLabel: {
                    Text("Order is awaiting pickup!")
                }
                .padding(.vertical, 30)
                
                
                
                Text("You can pick up your products at this location:")
                    .font(.subheadline)
                Map()
                    .frame(height: 200)
            }
            .padding()
        }
   
    }
}

#Preview {
    OrderDetail()
}
