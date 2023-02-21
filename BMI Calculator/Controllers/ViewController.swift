//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height = 1.5 // double
    var weight = 100  // int
    var bmi = 0.0 // double
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //print (String(format: "%.2f", sender.value))
        
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
        
        height = Double(String(format: "%.2f", sender.value))!
        
//        heightLabel.text = "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //print (String(format: "%.0f", sender.value))
        weightLabel.text = (String(format: "%.0f", sender.value)) + "kg"
        
        weight = Int(String(format: "%.0f", sender.value))!
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        print ("current height is \(height) meters")
        print ("current weight is \(weight) kilogramms")
        
        bmi = Double (weight) / (height * height)
        print ("BMI score is \(bmi)")
        
        let secondVC = SecondVC ()
        
        secondVC.bmiValue = String(bmi)
      
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    
}


