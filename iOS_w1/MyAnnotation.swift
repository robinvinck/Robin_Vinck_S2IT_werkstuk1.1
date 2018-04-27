//
//  myAnnotation.swift
//  oef6
//
//  Created by Robin Vinck on 30/03/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import Foundation
import MapKit

class MyAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title:String?){
        self.coordinate = coordinate
        self.title = title
        
    }
    
}
