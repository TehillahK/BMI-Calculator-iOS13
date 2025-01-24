//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Tehillah Kangamba on 2025-01-23.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var bmiValLabel: UILabel!
    
    var bmi: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        let bmiStr = String(format:"%.1f",bmi)
        bmiValLabel.text = bmiStr

        
    }
    

    @IBAction func recalc(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
