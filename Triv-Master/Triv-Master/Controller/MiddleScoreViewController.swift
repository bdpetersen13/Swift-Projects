//
//  MiddleScoreViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 28, 2022.
//

import UIKit
import Foundation

class MiddleScoreViewController: UIViewController {
    
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
        
        //scoreLabel.text = String(quizMaster.getScore())
        pageTitleLabel.text = "Results"
        labelBasedScore()
    }
    
    func labelBasedScore() {
        greetingLabel.text = "Good Job!"
        howYouDidLabel.text = "You Got Some Questions Correct!"
        //scoreLabel.text = String(quizMaster.getScore())
    }
}
