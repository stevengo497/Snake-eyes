//
//  ViewController.swift
//  Snake Eyes
//
//  Created by Steve Ngo on 7/16/18.
//  Copyright © 2018 Ngo Limit Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = [""]
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        updateDiceImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateDiceImage() {
        
        diceImageOne.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImageTwo.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImage()
        }
    }
}

