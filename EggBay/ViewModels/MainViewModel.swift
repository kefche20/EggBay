//
//  MainViewModel.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 21/02/2024.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var isLoggedIn = false
    init(isLoggedIn: Bool = false) {
        self.isLoggedIn = isLoggedIn
    }
}
