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

class ViewController: UIViewController {

    @IBOutlet weak var StartBtn: UIButton!
    @IBOutlet weak var CreditScreen: UIButton!
    @IBOutlet weak var CreditButton: UIButton!
    
    
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
        GMS()
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

