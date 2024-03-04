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
        VStack(alignment: .leading) {
            Text("EggBay")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 50)
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 30)
         
            Button {
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
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .navigationTitle("EggBay")
            
            Button {
            } label: {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(30)
        
        .interactiveDismissDisabled()
    }
    
}

//#Preview {
//    LoginView(viewModel: <#LoginViewModel#>)
//}
