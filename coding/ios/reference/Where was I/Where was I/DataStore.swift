//
//  DataStore.swift
//  Where was I
//
//  Created by Rogier Nitschelm on 28/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import Foundation

struct StorageKeys {
    
    static let storedLat = "storedLat"
    static let storedLon = "storedLon"
    
}

class DataStore {
    
    func GetDefaults() -> UserDefaults {
        return UserDefaults.standard
    }
    
    func StoredDataPoint (latitude: String, longitude: String) {
        let defaults = GetDefaults()
        
        defaults.setValue(latitude, forKey: StorageKeys.storedLat)
        defaults.setValue(longitude, forKey: StorageKeys.storedLon)
        defaults.synchronize()
        
        print(latitude, longitude)
    }
    
    func GetLastLocation () -> VisitedPoint? {
        let defaults = GetDefaults()
        
        if let lat = defaults.string(forKey: StorageKeys.storedLat) {
            if let lon = defaults.string(forKey: StorageKeys.storedLon) {
                return VisitedPoint(lat: lat, lon: lon)
            }
        }
        
        return nil
    }
}
