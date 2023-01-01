//
//  HomePageViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on January 1, 2023.
//

import UIKit
import Foundation

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var randomTrivia: UIButton!
    @IBOutlet weak var scienceTrivia: UIButton!
    @IBOutlet weak var historyTrivia: UIButton!
    @IBOutlet weak var movieTrivia: UIButton!
    
    @IBAction func buttonActuated(_ sender: UIButton) {
        let userSelection = sender.currentTitle!
    }
    
    var userQuiz = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "randomToQuestions" {
            userQuiz = "randomQuiz"
            let destinationVC = segue.destination as! ViewController
            destinationVC.userSelection = userQuiz
        }
    }
}
