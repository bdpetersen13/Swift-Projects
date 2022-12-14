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
    let teaTime: [String: Int] = ["Black": 2, "Green": 3, "Matcha": 4, "Herbal": 5, "White": 6, "Oolong": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    var player: AVAudioPlayer!

    @IBAction func teaSelection(_ sender: UIButton) {
        
        timer.invalidate()
        let steep = sender.currentTitle! //black, green, matcha, herbal, white, or oolong tea
        totalTime = teaTime[steep]!
        
        progressBarView.progress = 0.0
        secondsPassed = 0
        titleHeader.text  = steep
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    // Creating function to count down tea steeping time
    @objc func updateTimer() {
        if (secondsPassed < totalTime) {
            secondsPassed += 1
            progressBarView.progress = Float(secondsPassed) / Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
        }
        else {
            timer.invalidate()
            titleHeader.text = "DONE!!!"
            playSound()
        }
    }
    
    func playSound() {
        // Bundle finds the alarm_sound file in the application resources
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        // Tells the application the C.wav file that was found is the sound we want ot play
        player = try! AVAudioPlayer(contentsOf: url!)
        //Plays the sound
        player.play()
                
    }
}

