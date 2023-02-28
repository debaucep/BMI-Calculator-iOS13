//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
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
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(format: "%.2f", bmi)
        }
    }
    
}


