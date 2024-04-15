//
//  AppMainView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct AppMainView: View {
    @Environment(ModelData.self) var modelData
    @StateObject var viewModel: LoginViewModel
    @State private var selectedTab: String = "Discovery"

    var body: some View {
        VStack {
            TabView(selection: $selectedTab){
                DiscoveryView(viewModel: viewModel, selectedTab: $selectedTab)
                    .tabItem { Label("Discovery", systemImage: "safari") }
                    .tag("Discovery")
                
                CategoriesView(viewModel: viewModel, selectedTab: $selectedTab)
                    .tabItem { Label("Categories", systemImage: "list.dash") }
                    .tag("Categories")
                
                EventsView(viewModel: viewModel, selectedTab: $selectedTab)
                    .tabItem { Label("Events", systemImage: "calendar") }
                    .tag("Events")
                
                FavoritesView(viewModel: viewModel, selectedTab: $selectedTab)
                    .tabItem { Label("Favorites", systemImage: "heart") }
                    .tag("Favorites")
                
                OrdersView(viewModel: viewModel, selectedTab: $selectedTab)
                    .tabItem { Label("Orders", systemImage: "truck.box") }
                    .tag("Orders")
                    .badge(1)
            }
            .onAppear {
                if #available(iOS 15.0, *) {
                    let appearance = UITabBarAppearance()
                    UITabBar.appearance().scrollEdgeAppearance = appearance
                }
            }
            .toolbar {
                ToolbarHeader(viewModel: viewModel, selectedTab: $selectedTab)
            }
        }
    }
}

//#Preview {
//    AppMainView()
//}
