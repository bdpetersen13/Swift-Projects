//
//  FinalScoreViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 25, 2022.
//

import UIKit
import Foundation

class TopScoreViewController: UIViewController {
    
    // IBOutlet for various UI elements
    @IBOutlet weak var pageTitleLabel: UILabel!
    @IBOutlet weak var trophyImage: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var howYouDidLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tryAgainLabel: UILabel!
    
    var quizMaster = QuizMaster()
    var finalScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageTitleLabel.text = "Results"
        
        if (finalScore == 10) {
            labelTopScore()
        }
        else if (finalScore! > 0) {
            labelMiddleScore()
        }
        else if (finalScore == 0) {
            labelBottomScore()
        }

    }
    
    func labelTopScore() {
        greetingLabel.text = "Congragulations!"
        howYouDidLabel.text = "You Got All the Questions Correct!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
    
    func labelMiddleScore() {
        greetingLabel.text = "Good Job!"
        howYouDidLabel.text = "You Got Some Questions Correct!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
    func labelBottomScore() {
        greetingLabel.text = "Better Luck Next Time!"
        howYouDidLabel.text = "You Didn't Get Any Questions Correct! Don't Give Up!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
}
