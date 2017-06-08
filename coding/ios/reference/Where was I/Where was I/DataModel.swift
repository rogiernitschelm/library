//
//  DataModel.swift
//  Where was I
//
//  Created by Rogier Nitschelm on 28/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import Foundation

class VisitedPoint {
    var latitude: String
    var longitude: String
    
    init(lat: String, lon: String) {
        self.latitude = lat
        self.longitude = lon
    }
}
