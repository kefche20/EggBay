//
//  Event.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 16/04/2024.
//

import Foundation

struct Event: Hashable, Codable {
    var ID: Int
    var day_of_week: Int
    var is_repeating: Bool
    var name: String
    var location: String
    var photoURL: String
    var description: String
}
