//
//  SecondViewController.swift
//  Back to the Future
//
//  Created by Rogier Nitschelm on 23/05/2017.
//  Copyright © 2017 Rogier Nitschelm. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    
    @IBAction func buttonClicked(_ sender: Any) {
        let utils = Utilities()
        let year = utils.getRandomYear()
        
        lab1.text = String(utils.getLetterAtIndex(string: year, location: 0))
        lab2.text = String(utils.getLetterAtIndex(string: year, location: 1))
        lab3.text = String(utils.getLetterAtIndex(string: year, location: 2))
        lab4.text = String(utils.getLetterAtIndex(string: year, location: 3))
        
        animateItem(duration: 0.5, delay: 0, object: lab1)
        animateItem(duration: 0.5, delay: 0.2, object: lab2)
        animateItem(duration: 0.5, delay: 0.4, object: lab3)
        animateItem(duration: 0.5, delay: 0.6, object: lab4)
    }
    
    func animateItem (duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
            
        }
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

