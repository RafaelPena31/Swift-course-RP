//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Rafael Pena on 15/07/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let diceImageArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    @IBAction func onPressRole(_ sender: UIButton) {
        diceImageOne.image = diceImageArray.randomElement()
        diceImageTwo.image = diceImageArray.randomElement()
    }
}

