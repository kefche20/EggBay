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
    
    var body: some View {
        if mainViewModel.isLoggedIn {
            AppMainView()
        }
        else
        {
            // Implement login view here
        }
    }
}

#Preview {
    ContentView()
}
