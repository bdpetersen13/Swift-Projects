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
        if (quizMaster.getScore() == 10) {
            greetingLabel.text = "Congragulations, You're Awesome!"
            howYouDidLabel.text = "You Got All the Questions Correct!"
        }
        else if (quizMaster.getScore() < 10 && quizMaster.getScore() > 5) {
            greetingLabel.text = "Congragulations, You Passed!"
            howYouDidLabel.text = "You're So Close to a Perfect Score! You Got This!"
        }
        else {
            greetingLabel.text = "You Did Not Pass!"
            howYouDidLabel.text = "Best of Luck Next Time! You Got This!"
        }
    }
}
