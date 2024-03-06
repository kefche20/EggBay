//
//  LoginView.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    @State private var isLoggedIn: Bool = false
    var onLoginSuccess: (String) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("EggBay")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 50)
            TextField("Name", text: $viewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 30)
         
            Button {
                viewModel.login { isLoggedIn in
                    if isLoggedIn {
                        print("Login successful")
                        onLoginSuccess(viewModel.username)
                    }
                    else
                    {
                        print("Login failed")
                    }
                    self.isLoggedIn = isLoggedIn
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
        .sheet(isPresented: $isLoggedIn) {
            AccountView(username: viewModel.username, onDoneSuccess: {
                // Handle any action upon dismissing the AccountView
                isLoggedIn = false
            })
        }
        .interactiveDismissDisabled()
    }
}

//#Preview {
//    LoginView(viewModel: <#LoginViewModel#>)
//}
