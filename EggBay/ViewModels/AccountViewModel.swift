//
//  AccountViewModel.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

class AccountViewModel: ObservableObject {
    @Published var user: User?
    
    init(user: User) {
        self.user = user
    }
}
