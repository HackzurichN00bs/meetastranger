//
//  mapViewViewController.swift
//  MeetStrangers
//
//  Created by Dehua Zhu on 16.09.18.
//  Copyright © 2018 HackZurichN00bs. All rights reserved.
//

import UIKit
import MapKit

class mapViewViewController: UIViewController {

    @IBOutlet weak var startmeet: UIButton!
    @IBOutlet weak var stopmeet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startmeet_pressed(_ sender: Any) {
        startmeet.isHidden = true
        stopmeet.isHidden = false
    }
    
    @IBAction func stopbutton_pressed(_ sender: Any) {
        stopmeet.isHidden = true
        startmeet.isHidden = false
    }
    
    
   
}
