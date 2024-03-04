//
//  Product.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 4.03.24.
//

import Foundation
import SwiftUI

struct Product: Hashable, Codable {
    var ID: Int
    var category: String
    var kind: String
    var shopID: Int
    var photoURL: String
    var description: String
}
