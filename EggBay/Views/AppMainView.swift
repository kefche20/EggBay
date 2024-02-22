//
//  AppMainView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct AppMainView: View {
    @State private var showingDetail = false
    
    var body: some View {
            HStack(spacing:30, content: {
                HStack(alignment: .top, content: {
                    Text("EggBay")
                        .font(.title.bold())
                })
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
              
            })
            .padding(.horizontal)
        
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
