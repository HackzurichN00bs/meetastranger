//
//  mapViewViewController.swift
//  MeetStrangers
//
//  Created by Dehua Zhu on 16.09.18.
//  Copyright © 2018 HackZurichN00bs. All rights reserved.
//

import UIKit
import MapKit

class mapViewViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var startmeet: UIButton!
    @IBOutlet weak var stopmeet: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var zoomIn: UIButton!
    @IBOutlet weak var changeView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        mapView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startmeet_pressed(_ sender: Any) {
        startmeet.isHidden = true
        stopmeet.isHidden = false
        let userLocation = mapView.userLocation
        let region = MKCoordinateRegionMakeWithDistance((userLocation.location?.coordinate)!,2000,2000)
        mapView.setRegion(region,animated: true)
    }
    
    @IBAction func stopbutton_pressed(_ sender: Any) {
        stopmeet.isHidden = true
        startmeet.isHidden = false
    }
    
    @IBAction func zoomIn(_ sender: Any) {
        let userLocation = mapView.userLocation
        let region = MKCoordinateRegionMakeWithDistance((userLocation.location?.coordinate)!,2000,2000)
        mapView.setRegion(region,animated: true)
    }
    
    @IBAction func changeView(_ sender: Any) {
        if mapView.mapType == MKMapType.standard{
            mapView.mapType = MKMapType.satellite
        }else {
            mapView.mapType = MKMapType.standard
        }
    }
    
    
   
}
