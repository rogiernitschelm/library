//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Rogier Nitschelm on 23/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    
    func tick() {
        timeLabel.text = Utilities().getCurrentTime()
        
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut,
            animations: {
                self.view.alpha = 0.5
            }) { (true) in
                self.view.alpha = 1.0
        }
        
        print(timer)
    }
    
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let year = Utilities().getCurrentYear()
        
        label1.text = String(Utilities().getLetterAtIndex(string: year, location: 0))
        label2.text = String(Utilities().getLetterAtIndex(string: year, location: 1))
        label3.text = String(Utilities().getLetterAtIndex(string: year, location: 2))
        label4.text = String(Utilities().getLetterAtIndex(string: year, location: 3))
        // Do any additional setup after loading the view, typically from a nib.
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)
        
        tick()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

