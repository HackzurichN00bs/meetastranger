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

class ViewController: UIViewController {

    @IBOutlet weak var StartBtn: UIButton!
    @IBOutlet weak var CreditScreen: UIButton!
    @IBOutlet weak var CreditButton: UIButton!
//    @IBOutlet weak var startmeet: UIButton!
//    @IBOutlet weak var stopmeet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func CreditButton_Pressed(_ sender: Any) {
        CreditScreen.isHidden = false
        StartBtn.isHidden = true
        CreditButton.isHidden = true
    }
    
    @IBAction func CreditScreen_Pressed(_ sender: Any) {
        CreditScreen.isHidden = true
        StartBtn.isHidden = false
        CreditButton.isHidden = false
    }
    
    @IBAction func StartBtn_Pressed(_ sender: Any) {
        CreditScreen.isHidden = true
        StartBtn.isHidden = true
        CreditButton.isHidden = true
//        GMS()
//        startmeet.isHidden = false
//        stopmeet.isHidden = true
    }
    
    
    func GMS(){
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        //        let lastLocation = locations.last!
        let camera = GMSCameraPosition.camera(withLatitude: 47.389916, longitude: 8.515865, zoom: 17.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 47.389916, longitude: 8.515865)
        marker1.title = "Me@Technopark"
        marker1.snippet = "M@T"
//        marker1.icon = UIImage(named: "iconv1")
        marker1.icon = GMSMarker.markerImage(with: .green)
        marker1.map = mapView
        
        let position = CLLocationCoordinate2D(latitude: 10, longitude: 10)
        let marker2 = GMSMarker(position: position)
        marker2.title = "Hello World"
        marker2.map = mapView
        
    }
    
    
}

