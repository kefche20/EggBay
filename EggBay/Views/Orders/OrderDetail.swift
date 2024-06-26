//
//  TestView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 11.04.24.
//

import SwiftUI
import MapKit

struct OrderDetail: View {
    let order: Order
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            LazyVStack (alignment: .leading) {
                ProgressView(value: order.progressValue) {
                    Text(order.name)
                        .font(.headline)
                } currentValueLabel: {
                    Text(order.description)
                }
                .padding(.vertical, 30)
                
                Image(order.photoURL)
                    .resizable()
                    .frame(maxWidth: .infinity ,maxHeight: 200)
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                
                Text("You can pick up your products at this location:")
                    .font(.subheadline)
                Map()
                    .frame(height: 200)
                    .cornerRadius(5)
            }
            .padding()
        }
    }
}
