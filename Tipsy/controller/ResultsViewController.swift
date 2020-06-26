//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by macbook on 2020-06-24.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var result = 0.0
    var tip = 10
    var split = 2
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    print(result)
        totalLabel.text = String(format: "%.2f", result)
      
        settingsLabel.text = "Поділити між \(split) людьми і з чайовими на \(tip)%"

        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}


