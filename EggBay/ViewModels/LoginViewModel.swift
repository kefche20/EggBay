//
//  LoginViewModel.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var name = ""
    @Published var password = ""
    
    func login(completion: @escaping (Bool) -> Void)
    {
        let isLoggedIn = !name.isEmpty
        completion(isLoggedIn)
    }
}
