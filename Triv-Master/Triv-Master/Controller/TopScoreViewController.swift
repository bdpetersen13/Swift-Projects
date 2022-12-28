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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "10 / 10"
        pageTitleLabel.text = "Results"
        labelBasedScore()
    }
    
    func labelBasedScore() {
        greetingLabel.text = "Congragulations, You're Awesome!"
        howYouDidLabel.text = "You Got All the Questions Correct!"
    }
}
