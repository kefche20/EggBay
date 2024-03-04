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
        
        VStack {
            AppMainView()
        }.onAppear{
            if !loginViewModel.isLoggedIn
            {
                showingLoginMenu = true
            }
        }
        .sheet(isPresented: $showingLoginMenu) {
            LoginView(viewModel: loginViewModel, onLoginSuccess: {
                showingLoginMenu = false
            })        }
    }
}
#Preview {
    ContentView()
        .environment(ModelData())
}
