//
//  ViewController.swift
//  Xylophone
//
//  Created by Rafael Pena on 17/07/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    @IBAction func onKeyPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1) {
            sender.alpha = 0.5
        }
        
        let keyName = sender.currentTitle!
        playback(fileName: keyName)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            UIView.animate(withDuration: 0.1) {
                sender.alpha = 1
            }
        }
    }

    func playback(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

