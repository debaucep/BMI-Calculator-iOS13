//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by dmitry shcherba on 21.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit




class ResultsViewController: UIViewController {

    
    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue

    }
    
    
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        print (bmiValue)
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
