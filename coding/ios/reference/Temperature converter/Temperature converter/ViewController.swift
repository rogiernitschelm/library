//
//  ViewController.swift
//  Temperature converter
//
//  Created by Rogier Nitschelm on 21/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static var conversions: Int = 0
    
    @IBOutlet weak var conversionLabel: UILabel!
    @IBOutlet weak var temperatureEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func convertClicked(_ sender: Any) {
        if let result = temperatureEntry.text {
            if result == "" {
                return
            }

            if let number = Double(result) {
                let output = number * (9/5) + 32
                resultLabel.text = String(output)
                updateCountByOne()
                
            }
        }
    }
    
    func updateCountByOne() {
        ViewController.conversions += 1
        conversionLabel.text = "\(ViewController.conversions) Conversions"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

