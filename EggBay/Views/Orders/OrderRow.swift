//
//  OrderRow.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 16.04.24.
//

import SwiftUI

struct OrderRow: View {
    var order: Order

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(order.name)
                    .font(.headline)
                Text(order.description)
                    .font(.subheadline)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            Spacer()
            if order.ready == true {
                Image(systemName: "exclamationmark.circle.fill")
                    .foregroundStyle(.red)
                    .font(.system(size: 20))
            }
        }
    }
}
