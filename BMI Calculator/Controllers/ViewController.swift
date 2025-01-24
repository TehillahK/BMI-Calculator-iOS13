//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValLabel: UILabel!
    
    @IBOutlet weak var weightValLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let maxVal = sender.maximumValue
        
        let sliderValue = sender.value
        
        // determines which slider's value changed
        if(maxVal == 3.0){
            
            // height label slided
            let userHeight = String(format:"%.2f",sliderValue)
            heightValLabel.text = "\(userHeight)m"
            
        }else{
            
            // weight label slided
            let userWeight = String(format: "%.0f", sliderValue)
            weightValLabel.text = "\(userWeight)Kg"
        }
       
        
        
        
    }
    
}

