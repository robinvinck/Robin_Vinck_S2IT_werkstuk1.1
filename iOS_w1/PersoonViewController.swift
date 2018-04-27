//
//  PersoonViewController.swift
//  iOS_w1
//
//  Created by Robin Vinck on 10/04/18.
//  Copyright © 2018 Robin Vinck. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class PersoonViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    var personen = [Persoon]()
    var persoonInKwestie = Persoon();
    @IBOutlet weak var lblNaam: UILabel!
    
    @IBOutlet weak var imgPersoon: UIImageView!
    // @IBOutlet weak var persoonImage: UIImageView!
    
    @IBOutlet weak var myMapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPersoon.isUserInteractionEnabled = true
        
//        locationManager.requestAlwaysAuthorization()
//        if CLLocationManager.locationServicesEnabled(){
//            locationManager.startUpdatingLocation()
//        }
        
        for persoon in personen {
            if(persoon.voornaam == persoonInKwestie.voornaam){

                
                let location = CLLocationCoordinate2D(latitude: persoon.adres.latitude, longitude: persoon.adres.longitude)
                
                print(location.latitude)
                print(location.longitude)
                
                let myAnnotation = MyAnnotation(coordinate: location, title: persoon.voornaam)
                self.myMapView.addAnnotation(myAnnotation)
               self.myMapView.showAnnotations(self.myMapView.annotations, animated: true)
                
                /*let annotation = MKPointAnnotation()
                annotation.title = persoon.voornaam as String
                annotation.coordinate = CLLocationCoordinate2D(latitude: persoon.adres.latitude , longitude: persoon.adres.longitude)
                self.myMapView.addAnnotation(annotation)*/
            }
        }
        
        self.imgPersoon.image = UIImage(named: persoonInKwestie.image)
        self.lblNaam.text = persoonInKwestie.voornaam + " " + persoonInKwestie.achternaam
        //self.persoonImage.image = UIImage(named: persoon.image)
        // Do any additional setup after loading the view.
        
        print("ervoor")
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
//        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
//        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//        let region = MKCoordinateRegion(center: center, span: span)
//        mapView.setRegion(region, animated: true)
//    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        let vc = segue.destination as! ImageViewController
        
        vc.tempImage2 = persoonInKwestie.image
    
    }
 

}
