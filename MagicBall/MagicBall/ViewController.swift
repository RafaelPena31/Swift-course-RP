//
//  ViewController.swift
//  MagicBall
//
//  Created by Rafael Augusto Mesquita on 16/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageBall: UIImageView!
    
    let ballImageArray = [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball4")]
    
    @IBAction func onPressAsk(_ sender: Any) {
        imageBall.image = ballImageArray.randomElement()
    }
}

