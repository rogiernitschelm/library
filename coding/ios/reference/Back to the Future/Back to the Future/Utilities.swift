//
//  Utilities.swift
//  Back to the Future
//
//  Created by Rogier Nitschelm on 23/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import Foundation

class Utilities {
    func getCurrentYear() -> String {
        let date = Date()
        let calendar = Calendar.current
        
        return String(calendar.component(.year, from: date))
    }
    
    func getLetterAtIndex(string: String, location: Int) -> Character {
        let index = string.index(string.startIndex, offsetBy: location)
        
        return string[index]
    }
    
    func getCurrentTime() -> String {
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    
    func getRandomYear () -> String {
        return String(arc4random_uniform(8999) + 1000)
    }
}
