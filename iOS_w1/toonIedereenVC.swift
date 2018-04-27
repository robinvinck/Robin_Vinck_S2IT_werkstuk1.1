//
//  toonIedereenVC.swift
//  iOS_w1
//
//  Created by Robin Vinck on 27/04/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class toonIedereenVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

        var personen = [Persoon]()
    
 
    
    
    
    @IBOutlet weak var myMapView: MKMapView!
     var locationManager = CLLocationManager()
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let persoonInKwestie =  Persoon(voornaam: "Robin", achternaam: "Vinck", image: "robin",adres: Adres(latitude: 50.904602, longitude: 4.164215), coor: 1, tel: 1)
            let persoon2 =  Persoon(voornaam: "Jany", achternaam: "Ertveldt", image: "jany", adres: Adres(latitude: 50.904158, longitude: 4.166097), coor: 1, tel: 1)
            let persoon3 = Persoon(voornaam: "Aron", achternaam: "Raes", image: "aron", adres: Adres(latitude: 50.903289, longitude: 4.161012), coor: 1, tel: 1)
            let persoon4 = Persoon(voornaam: "Axel", achternaam: "Iradukunda", image: "axel", adres: Adres(latitude: 50.906107, longitude: 4.160723), coor: 1, tel: 1)
            
         
            
            personen.append(persoonInKwestie)
            personen.append(persoon2)
            personen.append(persoon3)
            personen.append(persoon4)
            
            locationManager.requestAlwaysAuthorization()
            if CLLocationManager.locationServicesEnabled(){
                locationManager.startUpdatingLocation()
            }
            
            for persoon in personen {
                if(persoon.voornaam != persoonInKwestie.voornaam){
                    
                    
                    let location = CLLocationCoordinate2D(latitude: persoon.adres.latitude, longitude: persoon.adres.longitude)
                    
                    print(location.latitude)
                    print(location.longitude)
                    
                    let myAnnotation = MyAnnotation(coordinate: location, title: persoon.voornaam)
                    self.myMapView.addAnnotation(myAnnotation)
                
                }
            }
        
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: center, span: span)
            mapView.setRegion(region, animated: true)
        }
        
        
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
    
        
        
}
