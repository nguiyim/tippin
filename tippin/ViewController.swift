//
//  ViewController.swift
//  tippin
//
//  Created by Jessica Nguiyim on 1/15/20.
//  Copyright © 2020 Jessica Nguiyim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTap(_ sender:
        Any) {
        
        print("Hello")
        
        view.endEditing(true)//force dismiss key board
    }
    
}

