//
//  ViewController.swift
//  TeaTime
//
//  Created by Brandon Petersen on December 12, 2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Creating IBOutlets for the titleLabel and the progressView
    @IBOutlet weak var progressBarView: UIProgressView!
    @IBOutlet weak var titleHeader: UILabel!
    
    // Initializing dictionary for various tea options
    let teaTime: [String: Int] = ["Black": 180, "Green": 60, "Matcha": 40, "Herbal": 300, "White": 180, "Oolong": 180]
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    var player: AVAudioPlayer!

    @IBAction func teaSelection(_ sender: UIButton) {
        
        timer.invalidate()
        let steep = sender.currentTitle // Black, Green, Matcha, Herbal, White, or Oolong
        totalTime = teaTime[steep]!
        
        progressBarView.progress = 0.0
        secondsPassed = 0
        titleHeader.text  = steep
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    // Creating function to count down tea steeping time
    @objc func updateTimer() {
        if (secondsPassed < totalTime) {
            secondsPassed += secondsPassed
            progressBarView.progress = Float(secondsPassed) / Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
        }
        else {
            timer.invalidate()
            titleHeader.text = "DONE!!!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}

