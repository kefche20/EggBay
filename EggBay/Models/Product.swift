//
//  Product.swift
//  EggBay
//
//  Created by Denislav Dimitrov on 4.03.24.
//

import Foundation

struct Product: Hashable, Codable {
    var ID: Int
    var category: String
    var kind: String
    var shopID: Int
    var photoURL: String
    var description: String
}

struct ProductGroup: Hashable {
    var groupName : String
    var products : [Product]
}
