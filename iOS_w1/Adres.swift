//
//  Persoon.swift
//  iOS_w1
//
//  Created by Robin Vinck on 4/04/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import Foundation

class Adres {
    var latitude:Double = 0.0
    var longitude:Double = 0.0

    
    
    init() {
        longitude = 0.0
        latitude = 0.0
    }
    
    init(latitude:Double, longitude:Double) {
        self.longitude = longitude
        self.latitude = latitude
        
    }
    
    
}

