//
//  ViewController.swift
//  TConverter
//
//  Created by Alex R. on 09/07/2019.
//  Copyright © 2019 Alex R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            
        }
        
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        // temperatureCelsius
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        // temperatureFahrenheit
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
    }
    // not good constreince



}

