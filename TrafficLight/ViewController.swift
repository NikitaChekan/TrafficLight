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
    
    @IBOutlet var changeColorButton: UIButton!
    
    private var changeColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircleView.layer.cornerRadius = 65
        yellowCircleView.layer.cornerRadius = 65
        greenCircleView.layer.cornerRadius = 65
        
        changeColorButton.layer.cornerRadius = 10
        
        redCircleView.alpha = 0.3
        yellowCircleView.alpha = 0.3
        greenCircleView.alpha = 0.3
    }

    @IBAction func changeColorButtonDidTapped() {
        changeColorButton.setTitle("NEXT", for: .normal)
        
        switch changeColor {
        case 0:
            redCircleView.alpha = 1
            changeColor += 1
        case 1:
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 1
            changeColor += 1
        case 2:
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 1
            changeColor += 1
        case 3:
            redCircleView.alpha = 1
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 0.3
            changeColor = 1
        default:
            break
        }
    }
}
