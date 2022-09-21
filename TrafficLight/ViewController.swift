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
    
    private var changeColor = ChangeColor.red
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircleView.alpha = lightOff
        yellowCircleView.alpha = lightOff
        greenCircleView.alpha = lightOff
        
        changeColorButton.layer.cornerRadius = 12
    }
    
    override func viewWillLayoutSubviews() {
        redCircleView.layer.cornerRadius = redCircleView.frame.width / 2
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.width / 2
        greenCircleView.layer.cornerRadius = greenCircleView.frame.width / 2
    }

    @IBAction func renameButtonDidTapped() {
        if changeColorButton.currentTitle == "START" {
            changeColorButton.setTitle("NEXT", for: .normal)
        }
    }
    
    @IBAction func changeColorButtonDidTapped() {
        
        switch changeColor {
        case .red:
            greenCircleView.alpha = lightOff
            redCircleView.alpha = lightOn
            changeColor = .yellow
        case .yellow:
            redCircleView.alpha = lightOff
            yellowCircleView.alpha = lightOn
            changeColor = .green
        case .green:
            yellowCircleView.alpha = lightOff
            greenCircleView.alpha = lightOn
            changeColor = .red
        }
    }
}

extension ViewController {
    enum ChangeColor {
        case red, yellow, green
    }
}
