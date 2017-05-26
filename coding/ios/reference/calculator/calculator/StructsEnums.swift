//
//  StructsEnums.swift
//  calculator
//
//  Created by Rogier Nitschelm on 22/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import Foundation

enum Operator: String {
    case add = "+"
    case subtract = "-"
    case times = "*"
    case divide = "/"
    case nothing = ""
}

enum CalculationState: String {
    case enteringNumber = "enteringNumber"
    case newNumberStarted = "newNumberStarted"
    
}
