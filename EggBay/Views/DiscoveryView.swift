//
//  DiscoveryView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct DiscoveryView: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack(alignment: .leading)
                {
                    ForEach(modelData.farms, id: \.self) { farm in
                        NavigationLink(destination:FarmView(farm: farm)) {
                            LargeBlock(location: farm.location, shopname: farm.name, description: farm.description)
                            
                        }}
                }
            }
        }
    }
}
