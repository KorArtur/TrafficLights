//
//  ViewController.swift
//  TrafficLight
//
//  Created by Карина Короткая on 26.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var isAllColorOff = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func buttonDidTaped() {
        
        if isAllColorOff {
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            isAllColorOff = false
        } else if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}
