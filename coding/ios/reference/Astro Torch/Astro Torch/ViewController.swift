//
//  ViewController.swift
//  Astro Torch
//
//  Created by Rogier Nitschelm on 21/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colors: [UIColor] = [UIColor.red, UIColor.blue, UIColor.green]
    var count = 0
    
    @IBOutlet weak var myButton: UIButton!
    @IBAction func MyButtonClicked(_ sender: UIButton) {
       self.view.backgroundColor = colors[self.count]
        
        if count == 2 {
            self.count = 0
        } else {
            self.count += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

