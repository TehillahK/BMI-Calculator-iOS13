//
//  BMI.swift
//  BMI Calculator
//
//  Created by Tehillah Kangamba on 2025-01-24.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float 
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        if(value < 18.5){
            advice = "You can eat more"
            color = UIColor.blue
        }else if(value < 24.9){
            advice = "you are just fine"
            color = UIColor.systemTeal
        }else{
            advice = "maybe lay off the snacks"
            color = UIColor.red
        }
        
    }
    
    
    
}
