//
//  DiscoveryView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct DiscoveryView: View {
    var body: some View {
        List
        {
            LargeBlock(location: "Eindhoven", shopname: "Farm name1", description: "Shop1")
                .listRowSeparator(.hidden)
            LargeBlock(location: "Amsterdam", shopname: "Farm name2", description: "Shop2")
                .listRowSeparator(.hidden)
            LargeBlock(location: "Tilburg", shopname: "Farm name3", description: "Shop3")
                .listRowSeparator(.hidden)
        }
        .scrollContentBackground(.hidden)


    }
}

#Preview {
    DiscoveryView()
}
