//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by dmitry shcherba on 20.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var bmiValue = "test label name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.backgroundColor = .white
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.addSubview(label)
        
    }
    
    

}
