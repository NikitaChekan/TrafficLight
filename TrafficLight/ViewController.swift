//
//  ViewController.swift
//  TrafficLight
//
//  Created by jopootrivatel on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redCircleView: UIView!
    @IBOutlet var yellowCircleView: UIView!
    @IBOutlet var greenCircleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircleView.layer.cornerRadius = 65
        yellowCircleView.layer.cornerRadius = 65
        greenCircleView.layer.cornerRadius = 65
        
    }


}

