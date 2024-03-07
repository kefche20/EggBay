//
//  FarmFavourites.swift
//  EggBay
//
//  Created by Nedyalko Tenev on 05/03/2024.
//

import Foundation

class FarmFavourites: ObservableObject {
    private let saveKey = "farmFavs"
    
    private var farms: Set<Int> {
        get {
            load()
        }
        set {
            UserDefaults.standard.set(Array(newValue), forKey: saveKey)
        }
    }
    
    init() {
        // No need to initialize farms here
    }
    
    func contains(_ farm: Farm) -> Bool {
        farms.contains(farm.ID)
    }
    
    func add(_ farm: Farm) {
        objectWillChange.send()
        farms.insert(farm.ID)
    }
    
    func remove(_ farm: Farm) {
        objectWillChange.send()
        farms.remove(farm.ID)
    }
    
    private func load() -> Set<Int> {
        guard let farmIDs = UserDefaults.standard.array(forKey: saveKey) as? [Int] else {
            return []
        }
        return Set(farmIDs)
    }
}
