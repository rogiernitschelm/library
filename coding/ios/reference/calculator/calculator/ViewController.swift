//
//  ViewController.swift
//  Calculator
//
//  Created by Rogier Nitschelm on 28/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var userIsTyping = false
    private var brain: CalculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var display: UILabel!
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            if let displayText = display.text {
                if let displayDouble = Double(displayText) {
                    return displayDouble
                }
        
            }
            
            return 0

        }
        
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsTyping {
            brain.setOperand(displayValue)
            userIsTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        
        if let result = brain.result {
            displayValue = result
        }
    }
}

