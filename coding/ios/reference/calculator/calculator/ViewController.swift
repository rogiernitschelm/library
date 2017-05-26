//
//  ViewController.swift
//  calculator
//
//  Created by Rogier Nitschelm on 22/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var currentOperation: Operator = Operator.nothing
    var calculationState: CalculationState = CalculationState.enteringNumber
    var firstValue: String = ""
    
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Button actions 
    
    @IBAction func numberClicked(_ sender: UIButton) {
        updateDisplay(number: String(sender.tag))
    }
    
    func updateDisplay(number: String) {
        if calculationState == CalculationState.newNumberStarted {
            if let num = resultLabel.text {
                if num != "" {
                    firstValue = num
                }
            }
            
            calculationState = CalculationState.enteringNumber
            resultLabel.text = number
        }
        
        else if calculationState == CalculationState.enteringNumber {
            resultLabel.text = resultLabel.text! + number
        }
    }
    
    @IBAction func operatorClicked(_ sender: UIButton) {
        calculationState = CalculationState.newNumberStarted
        
        if let num = resultLabel.text {
            if num != "" {
                firstValue = num
                resultLabel.text = ""
            }
        }
        
        switch sender.tag {
            case 10:
                currentOperation = Operator.add
                resultLabel.text = "+"
            case 11:
                currentOperation = Operator.subtract
                resultLabel.text = "-"
            case 12:
                currentOperation = Operator.times
                resultLabel.text = "*"
            case 13:
                currentOperation = Operator.divide
                resultLabel.text = "/"
            default:
                return
        }
    }
    
    @IBAction func equalsClicked(_ sender: UIButton) {
        calculateSum()
    }
    
    func calculateSum() {
        if (firstValue.isEmpty) {
            return
        }
        
        var result = ""
        if currentOperation == Operator.times {
            result = "\(Double(firstValue)! * Double(resultLabel.text!)!)"
        } else if currentOperation == Operator.divide {
            result = "\(Double(firstValue)! / Double(resultLabel.text!)!)"
        } else if currentOperation == Operator.add {
            result = "\(Double(firstValue)! + Double(resultLabel.text!)!)"
        } else if currentOperation == Operator.subtract {
            result = "\(Double(firstValue)! - Double(resultLabel.text!)!)"
        }
        
        resultLabel.text = result
        calculationState = CalculationState.newNumberStarted
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

