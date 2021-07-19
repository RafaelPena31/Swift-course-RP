//
//  ViewController.swift
//  EggTimer
//
//  Created by Rafael Pena on 18/07/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var eggTitle: UILabel!
    @IBOutlet weak var progressEgg: UIProgressView!
    
    let eggTimeData = ["Soft": 3, "Medium": 5, "Hard": 7]
    var timer = Timer()
    var player: AVAudioPlayer?
    var secondToCount = 0
    var currentSecond = 0
    
    @IBAction func onStartHandleEgg(_ sender: UIButton) {
        timer.invalidate()
        progressEgg.progress = 0
        
        let typeEgg = sender.currentTitle!
        secondToCount = eggTimeData[typeEgg]!
        
        currentSecond = 0
        
        eggTitle.text = typeEgg
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(cookingEgg), userInfo: nil, repeats: true)
    }
    
    @objc func cookingEgg() {
        if currentSecond < secondToCount {
            currentSecond += 1
            progressEgg.progress = Float(currentSecond) / Float(secondToCount)
        } else {
            timer.invalidate()
            eggTitle.text = "DONE!"
            playAlert()
        }
    }
    
    func playAlert() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try? AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
}
