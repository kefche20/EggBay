//
//  AppMainView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct AppMainView: View {
    @Environment(ModelData.self) var modelData
    @State private var showingDetail = false
    @State private var selectedTab: String = "Discovery"
    
    var body: some View {
        VStack {
            HStack(spacing:30) {
                Text(selectedTab)
                    .font(.title.bold())
                Spacer()
                Button {
                    showingDetail = true
                } label: {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                } .sheet(isPresented:$showingDetail) {
                    AccountView(onDoneSuccess: {
                        showingDetail = false
                    })
                }
            }
            .padding(.horizontal)
            
            TabView(selection: $selectedTab){
                DiscoveryView()
                    .tabItem { Label("Discovery", systemImage: "safari") }
                    .tag("Discovery")
                
                CategoriesView()
                    .tabItem { Label("Categories", systemImage: "list.dash") }
                    .tag("Categories")
                
                EventsView()
                    .tabItem { Label("Events", systemImage: "calendar") }
                    .tag("Events")
                
                FavoritesView()
                    .tabItem { Label("Favorites", systemImage: "heart") }
                    .tag("Favorites")
                
                OrdersView()
                    .tabItem { Label("Orders", systemImage: "truck.box") }
                    .tag("Orders")
            }
        }
    }
}

#Preview {
    AppMainView()
}
