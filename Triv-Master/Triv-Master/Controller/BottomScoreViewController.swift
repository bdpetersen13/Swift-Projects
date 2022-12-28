//
//  BottomScoreViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 28, 2022
//

import UIKit
import Foundation

class BottomScoreViewController: UIViewController {
    
    // IBOutlet for various UI elements
    @IBOutlet weak var pageTitleLabel: UILabel!
    @IBOutlet weak var trophyImage: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var howYouDidLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tryAgainLabel: UILabel!

    var quizMaster = QuizMaster()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(quizMaster.getScore())
        pageTitleLabel.text = "Results"
        labelBasedScore()
    }
    
    func labelBasedScore() {
        greetingLabel.text = "Better Luck Next Time!"
        howYouDidLabel.text = "You Didn't Get Any Questions Correct! Better Luck Next Time!"
        scoreLabel.text = "0 / 10"
    }
}
