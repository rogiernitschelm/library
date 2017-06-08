//
//  ViewController.swift
//  Where was I
//
//  Created by Rogier Nitschelm on 25/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        UpdateSavedPin()
    }
    
    func UpdateSavedPin() {
        if let oldCoordinates = DataStore().GetLastLocation() {
            
            let annotationRemove = mapView.annotations.filter { $0 !== mapView.userLocation }
            
            mapView.removeAnnotations(annotationRemove)
            
            let annotation = MKPointAnnotation()
            
            annotation.coordinate.latitude = Double(oldCoordinates.latitude)!
            annotation.coordinate.longitude = Double(oldCoordinates.longitude)!
            annotation.title = "I was here!"
            annotation.subtitle = "Remember?"
            
            mapView.addAnnotation(annotation)
        }
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        let coordinates = locationManager.location?.coordinate
        
        if let lat = coordinates?.latitude {
            if let lon = coordinates?.longitude {
                DataStore().StoredDataPoint(latitude: String(lat), longitude: String(lon))
            }
        }
        
        UpdateSavedPin()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else {
            return print("Location not enabled")
        }
        
        print("Location allowed")
        mapView.showsUserLocation = true
    }
}

