//
//  Persoon.swift
//  iOS_w1
//
//  Created by Robin Vinck on 4/04/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import Foundation

class Persoon {
    var voornaam:String = ""
    var achternaam:String = ""
    var image:String = ""
    var adres:Adres = Adres(latitude: 0.0, longitude: 0.0)
    var coor:Int = 0
    var tel:Int = 0
    
    
    
    func getVoornaam() -> String{
        return "" + voornaam
    }
    
    func getAchternaam() -> String{
        return "" + achternaam
    }
    
    init() {
        voornaam = ""
        achternaam = ""
        image = ""
        adres = Adres(latitude: 0.0, longitude: 0.0)
        coor = 0
        tel = 0
    }
    
    init(voornaam:String, achternaam:String, image:String, adres:Adres, coor:Int, tel:Int) {
        self.voornaam = voornaam
        self.achternaam = achternaam
        self.image = image
        self.adres = adres
        self.coor = coor
        self.tel = tel
    }
    
   
}
