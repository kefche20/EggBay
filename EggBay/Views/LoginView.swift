//
//  LoginView.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    var onLoginSuccess: () -> Void
    
    var body: some View {
        // To be replaced with Sign in with Apple
        VStack {
            
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Divider()
            Button("Login") {
                viewModel.login { isLoggedIn in
                    if isLoggedIn {
                        print("Login successful")
                        onLoginSuccess()
                    }
                    else
                    {
                        print("Login failed")
                    }
                }
            } .padding()
        }
        .padding()
        .navigationTitle("Login")
        .interactiveDismissDisabled()
    }
    
}

//#Preview {
//    LoginView(viewModel: LoginViewModel())
//}
