//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var billTextFeild: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var stepperValue = 2
    var billTotal = 0.0
    var Bresult = 0.0
    var tip = 0.0
    var totalresult = "0.0"
    @IBAction func tipChanged(_ sender: UIButton) {
    
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
       
       stepperValue =  Int(sender.value)
        splitNumberLabel.text = String(stepperValue)
       
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if tenPctButton.isSelected == true{
            tip = 0.1
        }else if twentyPctButton.isSelected == true{
            tip = 0.2
        }
        
        let text = billTextFeild.text!
        
        if text != ""{
        billTotal = Double(text)!
        }

        
        
        Bresult = billTotal * (1 + tip) / Double(stepperValue)
        totalresult = String(Bresult)
        
        performSegue(withIdentifier: "calculatorView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "calculatorView"{
            let destinationVC = segue.destination as! ResultsViewController
            
            
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = stepperValue
            destinationVC.result = Bresult
        }
        
}

}
