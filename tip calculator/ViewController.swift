//
//  ViewController.swift
//  tip calculator
//
//  Created by Jack Belding on 9/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var onTap: UISegmentedControl!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get initial bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [ 0.15, 0.18, 0.2 ]
        
        // calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip and total labels
        tipPercentageLabel.text = String( format: "$%.2f", tip)
        totalLabel.text = String( format: "$%.2f", total)
        
        
    }
}

