//
//  ContentView.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @StateObject var mainViewModel = MainViewModel()
    @State private var showingLoginMenu = false
    
    var body: some View {
        ZStack {
            AppMainView(viewModel: loginViewModel)
            
            if showingLoginMenu {
                Color(UIColor.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {}
                
                LoginView(viewModel: loginViewModel) { _ in
                    showingLoginMenu = false
                }
            }
        }
        .onAppear {
            if !loginViewModel.isLoggedIn {
                showingLoginMenu = true
            }
        }
    }
}




//#Preview {
//    ContentView()
//        .environment(ModelData())
//}
