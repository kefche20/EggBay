//
//  EventsView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct EventsView: View {
    @StateObject var viewModel: LoginViewModel
    var selectedTab: Binding<String>
    
    var body: some View {
        Text("Events")
    }
    
//        .toolbar {
//            ToolbarHeader(viewModel: viewModel, selectedTab: selectedTab)
//        }
}

//#Preview {
//    EventsView()
//}
