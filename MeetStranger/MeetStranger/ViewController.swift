//
//  ViewController.swift
//  MeetStranger
//
//  Created by Dehua Zhu on 15.09.18.
//  Copyright © 2018 HackZurichN00bs. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    
    @IBOutlet weak var Bkg1: UIImageView!
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var Btn2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Btn1_Pressed(_ sender: Any) {
        View1.isHidden = false
        Bkg1.isHidden = true
        Btn1.isHidden = true
    }
    
    @IBAction func Btn2_Pressed(_ sender: Any) {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
    
    

}

