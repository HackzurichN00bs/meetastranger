//
//  ViewController.swift
//  MeetStrangers
//
//  Created by Dehua Zhu on 15.09.18.
//  Copyright © 2018 HackZurichN00bs. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
import MapKit
import CoreLocation




class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var map1: MKMapView!
    
    let manager = CLLocationManager()
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
//        let location = locations[0]
//        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
//        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
//        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
//        map1.setRegion(region, animated: true)
//
//        print(location.altitude)
//        print(location.speed)
//
//        self.map1.showsUserLocation = true
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Btn1_Pressed(_ sender: Any) {
        View1.isHidden = false
        Btn1.isHidden = true
    }
    
    
    
    @IBAction func Btn2_Pressed(_ sender: Any) {
        Btn1.isHidden=true
        Btn2.isHidden=true
        GMS()
        print("Btn2 pressed!!!")

    }
    
    func GMS(){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
//        let lastLocation = locations.last!
        let camera = GMSCameraPosition.camera(withLatitude: 47.389916, longitude: 8.515865, zoom: 17.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 47.389916, longitude: 8.515865)
//        marker.position = (self.selectedPlace?.coordinate)!
        marker.map = mapView
        
//        let marker = GMSMarker(position: (self.selectedPlace?.coordinate)!)

//        print(lastLocation)
    }
    

    
}


