//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Rogier Nitschelm on 29/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var pendingBinaryOperation: PendingBinaryOperation?
    private var accumulator: Double?
    private enum Operation {
        case constant(Double)
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double, Double) -> Double)
        case equals
        case dot((Double) -> Double)
    }
    
    private let operations: Dictionary<String, Operation> = [
        "π": Operation.constant(Double.pi),
        "e": Operation.constant(M_E),
        "√": Operation.unaryOperation(sqrt),
        "cos": Operation.unaryOperation(cos),
        "±": Operation.unaryOperation({ -$0 }),
        "x": Operation.binaryOperation({ $0 * $1 }),
        "/": Operation.binaryOperation({ $0 / $1 }),
        "+": Operation.binaryOperation({ $0 + $1 }),
        "-": Operation.binaryOperation({ $0 - $1 }),
        "=": Operation.equals,
        ".": Operation.dot({ $0 / 100.0 })
    ]
    
    var result: Double? {
        get {
            if let newResult = accumulator {
                return newResult
            }
            
            return nil
        }
    }
    
    mutating func performOperation(_ symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            
            case .constant(let value):
                accumulator = value
            
            case .unaryOperation(let function):
                if accumulator != nil {
                    accumulator = function(accumulator!)
                }
            
            case .binaryOperation(let function):
                if accumulator != nil {
                    pendingBinaryOperation = PendingBinaryOperation(function: function, firstOperand: accumulator!)
                    accumulator = nil
                }
                
            case .equals:
                performPendingBinaryOperation()
            
            case .dot(let function):
                if accumulator != nil {
                    accumulator = function(accumulator!)
                }
            }
            
        }
    }
    
    private mutating func performPendingBinaryOperation() {
        if pendingBinaryOperation != nil && accumulator != nil {
            accumulator = pendingBinaryOperation!.perform(with: accumulator!)
            pendingBinaryOperation = nil
        }
    }

    
    private struct PendingBinaryOperation {
        let function: (Double, Double) -> Double
        let firstOperand: Double
        
        func perform(with secondOperand: Double) -> Double {
            return function(firstOperand, secondOperand)
        }
     }
    
    mutating func setOperand(_ operand: Double) {
        self.accumulator = operand
    }
    
    
}
