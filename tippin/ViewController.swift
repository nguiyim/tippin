//
//  ViewController.swift
//  tippin
//
//  Created by Jessica Nguiyim on 1/15/20.
//  Copyright © 2020 Jessica Nguiyim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//elements of you screen you want to be able to configure
//Pile of outlets what you want to be able to control
    @IBOutlet weak var billField:UITextField!
    @IBOutlet weak var tipLabel:UILabel!
    @IBOutlet weak var totalLabel:UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//A pile of actions user actions
//were you apply your logic
//create a network event like double tap which opens up
//new window or an instagram like make a network request
//
    @IBAction func OnTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)//force dismiss key board
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
         // Get the bill amount
            let bill = Double(billField.text!) ?? 0// change it into a number
        
        // Calculate the tip and total
            let tipPercentages = [0.15, 0.18, 0.20]
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
        
        // Update the tip and total labels
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
    }
}

