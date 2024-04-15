//
//  ToolbarImage.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 15.04.24.
//

import SwiftUI

struct ToolbarHeader: ToolbarContent {
        @StateObject var viewModel: LoginViewModel
        @State private var showingDetail = false
    @Binding var selectedTab: String
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text(selectedTab)
                .font(.title.bold())
        }
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                showingDetail = true
            } label: {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } .sheet(isPresented:$showingDetail) {
                AccountView(username: "text", onDoneSuccess: {
                    showingDetail = false
                })
            }
        }
    }
}

//#Preview {
//    ToolbarImage()
//}
