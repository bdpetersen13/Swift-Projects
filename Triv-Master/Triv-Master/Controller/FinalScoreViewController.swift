//
//  FinalScoreViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on 12/25/22.
//

import UIKit
import Foundation

class FinalScoreViewController: UIViewController {
    
    // IBOutlet for various UI elements
    @IBOutlet weak var pageTitleLabel: UILabel!
    @IBOutlet weak var trophyImage: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var howYouDidLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tryAgainLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    var quizMaster = QuizMaster()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(quizMaster.getScore())
        labelBasedScore()
    }
    
    func labelBasedScore() {
        if (quizMaster.getScore() == 3) {
            greetingLabel.text = "Congragulations, You're Awesome!"
            howYouDidLabel.text = "You Got All the Questions Correct!"
        }
        else if (quizMaster.getScore() < 3 && quizMaster.getScore() > 1) {
            greetingLabel.text = "Congragulations, You Passed!"
            howYouDidLabel.text = "You Missed One Question!"
        }
        else {
            greetingLabel.text = "You Failed!"
            howYouDidLabel.text = "Better Luck Next Time!"
        }
    }
}
