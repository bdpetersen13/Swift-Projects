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
    var finalScore: Int?    // finalScore optional since it's bringing the value from the ViewController over
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageTitleLabel.text = "Results"
        
        if (finalScore == 10) {
            trophyImage.image = #imageLiteral(resourceName: "Gold_Trophy")    // Gold Trophy
            labelTopScore()
        }
        else if (finalScore! > 5) {
            trophyImage.image = #imageLiteral(resourceName: "Silver_Trophy")    // Silver Trophy
            labelMiddleTopScore()
        }
        else if (finalScore! < 6 && finalScore! > 0) {
            trophyImage.image = #imageLiteral(resourceName: "Bronze_Trophy")    // Bronze Trophy
            labelMiddleBottomScore()
        }
        else if (finalScore == 0) {
            trophyImage.image = #imageLiteral(resourceName: "Coal")    // Coal Trophy
            labelBottomScore()
        }

    }
    
    // Display image literals and text lables based on user's score
    func labelTopScore() {
        greetingLabel.text = "Congragulations!"
        howYouDidLabel.text = "You Got All the Questions Correct!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
    
    func labelMiddleTopScore() {
        greetingLabel.text = "Great Job!"
        howYouDidLabel.text = "You Got Most Questions Correct!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
    
    func labelMiddleBottomScore() {
        greetingLabel.text = "Nice Job!"
        howYouDidLabel.text = "You Got Some Questions Correct!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
    
    func labelBottomScore() {
        greetingLabel.text = "Better Luck Next Time!"
        howYouDidLabel.text = "You Didn't Get Any Questions Correct! Don't Give Up!"
        scoreLabel.text = String(finalScore!) + " / 10"
    }
}
