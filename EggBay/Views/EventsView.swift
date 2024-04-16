//
//  EventsView.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 21.02.24.
//

import SwiftUI

struct EventsView: View {
    @StateObject var viewModel: LoginViewModel
    @Environment(ModelData.self) var modelData
    var selectedTab: Binding<String>
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(alignment: .leading)
                {
                    ForEach(modelData.events, id: \.self) { event in
                        NavigationLink(destination:EventDetail(event: event)){
                            LargeBlock(location: event.location, shopname: event.name, description: event.description, photoURL: event.photoURL)
                        }
                        
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
//    EventsView()
//}
