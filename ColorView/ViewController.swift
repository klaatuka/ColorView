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
        
        mainView.backgroundColor = .black
        
        view.backgroundColor = UIColor(red: 1 / 255, green: 59 / 255, blue: 255 / 255, alpha: 0.8)
        
    }
    
    @IBAction func redAction(_ sender: UISlider) {
        redSlider.minimumTrackTintColor = .red
        draftview()
        redLabel.text = String(Int(redSlider.value))
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        greenSlider.minimumTrackTintColor = .green
        draftview()
        greenLabel.text = String(Int(greenSlider.value))
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        blueSlider.minimumTrackTintColor = .blue
       draftview()
        blueLabel.text = String(Int(blueSlider.value))
    }
    
    func draftview(){
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
}

