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
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var logic = CalculatorLogic()
    
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
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
      //  let secondVC = SecondViewController()
        
        
        
        logic.calculate(weightSlider.value, heightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
      
        
      //  self.present(secondVC, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmi = logic.bmi?.value ?? 0.0
            destinationVC.advice = logic.bmi?.advice ?? ""
            destinationVC.color = logic.bmi?.color ?? UIColor.clear
        }
    }
    
}

