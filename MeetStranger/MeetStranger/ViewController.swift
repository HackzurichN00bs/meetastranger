//
//  ViewController.swift
//  MeetStranger
//
//  Created by Dehua Zhu on 15.09.18.
//  Copyright © 2018 HackZurichN00bs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Bkg1: UIImageView!
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var View1: UIView!
    
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
    
}

