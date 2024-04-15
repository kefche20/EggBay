//
//  OrdersView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("In Progress")) {
                    NavigationLink(destination:OrderInfoView()) {
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Tomatoes")
                                    .font(.headline)
                                Text("Order is awaiting pickup!")
                                    .font(.subheadline)
                                    .foregroundColor(Color(UIColor.secondaryLabel))
                                
                            }
                            Spacer()
                            Image(systemName: "exclamationmark.circle.fill"
                            ).foregroundStyle(.red)
                                .font(.system(size: 20))
                            
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("Eggs")
                            .font(.headline)
                        Text("Order is being prepared...")
                            .font(.subheadline)
                            .foregroundStyle(Color.gray)
                    }
                }
                
                Section(header: Text("Previous Orders")) {
                    VStack (alignment: .leading) {
                        Text("Cucumbers")
                            .font(.headline)
                        Text("Received on 23/04/23.")
                            .font(.subheadline)
                            .foregroundStyle(Color.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    OrdersView()
}
