//
//  LoginViewModel.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    
    func login(completion: @escaping (Bool) -> Void)
    {
        isLoggedIn = !username.isEmpty && !password.isEmpty
        completion(isLoggedIn)
    }
}
