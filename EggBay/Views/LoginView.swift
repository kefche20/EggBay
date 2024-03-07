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
    
    private enum Field: Int, CaseIterable {
            case username, password
        }
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("EggBay")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 50)
            
            TextField("Name", text: $viewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .focused($focusedField, equals: .username)
                .overlay(
                      RoundedRectangle(cornerRadius: 5)
                          .stroke(Color(UIColor.tertiaryLabel), lineWidth: 1)
                  )
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .focused($focusedField, equals: .password)
                .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(UIColor.tertiaryLabel), lineWidth: 1)
        )
  
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
                focusedField = nil
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
