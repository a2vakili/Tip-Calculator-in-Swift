//
//  ViewController.swift
//  TipCalculatorInSwift
//
//  Created by Arsalan Vakili on 2015-07-21.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var rangeOfTipPercentage: UISlider!
    @IBOutlet weak var calculatedTip: UILabel!
    
    @IBOutlet weak var sliderSwitchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTipSlider(sender: AnyObject) {
        var formatter : NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        var billTotal = formatter.numberFromString(billAmountTextField.text)
        
        
        if let unwrappedTotal = billTotal{
            
            let billAmountEntered = unwrappedTotal.floatValue
            
            let tipRange = floor(rangeOfTipPercentage.value)
            
            let totalTip = billAmountEntered * tipRange / 100.0

            sliderSwitchLabel.text = "\(tipRange)"
            calculatedTip.text = "\(totalTip)"
            
        } else {
            
            calculatedTip.text = "Please enter a valid number"
        }
        
        
    }
    
    
}







