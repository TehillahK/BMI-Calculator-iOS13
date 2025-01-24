//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Tehillah Kangamba on 2025-01-24.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorLogic{
    
    var bmi: BMI? = nil;
    
    mutating func calculate(_ width: Float,_ height: Float) {
       let bmiVal = width / pow(height,2)
        
       bmi = BMI(value: bmiVal)
    }
}
