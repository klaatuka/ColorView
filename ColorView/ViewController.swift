//
//  ViewController.swift
//  ColorView
//
//  Created by Карен Узунян on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        
    }
    
    @IBAction func redAction(_ sender: UISlider) {
        redSlider.minimumTrackTintColor = .red
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        greenSlider.minimumTrackTintColor = .green
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        blueSlider.minimumTrackTintColor = .blue
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
}

