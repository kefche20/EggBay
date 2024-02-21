//
//  AppMainView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct AppMainView: View {
    var body: some View {
        TabView{
            DiscoveryView()
                .tabItem { Label("Discovery", systemImage: "safari")
                }
            
            CategoriesView()
                .tabItem { Label("Categories", systemImage: "list.dash")
                }
            
            EventsView()
                .tabItem { Label("Events", systemImage: "calendar")
                }
            
            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "heart")
                }
            
            OrdersView()
                .tabItem { Label("Orders", systemImage: "truck.box")
                }
        }
    }
}

#Preview {
    AppMainView()
}
