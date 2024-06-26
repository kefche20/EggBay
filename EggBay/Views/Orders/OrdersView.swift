//
//  OrdersView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct Order: Identifiable {
    let id = UUID()
    var name: String
    var photoURL: String
    var status: String
    var ready: Bool
    var progressValue: Double
    var description: String
}

struct OrdersView: View {
    @StateObject var viewModel: LoginViewModel
    var selectedTab: Binding<String>
    
    let exampleOrders = [
        Order(name: "Eggs", photoURL: "eggs", status: "inProgress", ready: true, progressValue: 1, description: "Order is awaiting pickup!"),
        Order(name: "Cucumbers", photoURL: "cucumber", status: "inProgress", ready: false, progressValue: 0.6, description: "Order is being prepared..."),
        Order(name: "Tomatoes", photoURL: "tomatoes", status: "received", ready: false, progressValue: 0, description: "Received on 23/04/23.")
        ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("In Progress")) {
                    ForEach(exampleOrders.filter { $0.status.contains("inProgress") }) { order in
                        NavigationLink(destination: OrderDetail(order: order)) {
                            OrderRow(order: order)
                        }
                    }
                }
                
                Section(header: Text("Previous Orders")) {
                    ForEach(exampleOrders.filter { $0.status.contains("received") }) { order in
                        OrderRow(order: order)
                    }
                }
            }
            .toolbar {
                ToolbarHeader(viewModel: viewModel, selectedTab: selectedTab)
            }
        }
    }
}


//#Preview {
//    OrdersView()
//}
