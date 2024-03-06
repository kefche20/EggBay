//
//  FavoritesView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var favourites = FarmFavourites()
    @Environment(ModelData.self) var modelData
    @State private var favsChanges = 0
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading)
                {
                    Text(String(favsChanges))
                        .hidden()
                    if modelData.farms.filter({ favourites.contains($0) }).isEmpty {
                        Text("No farms added as favorites ")
                            .foregroundColor(.secondary)
                            .padding()
                    } else {
                        ForEach(modelData.farms.filter { favourites.contains($0) }, id: \.self) { farm in
                            NavigationLink(destination: FarmDetail(farm: farm)) {
                                LargeBlock(location: farm.location, shopname: farm.name, description: farm.description, photoURL: farm.photoURL)
                            }
                        }
                    }
                }
                .onAppear {
                    // Refresh the view when it appears to ensure initial consistency
                    favsChanges+=1
                }
            }
        }
        .environmentObject(favourites)
    }
}

#Preview {
    FavoritesView()
}
