//
//  ViewController.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 24, 2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // IBOutlet for various UI elements
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var choiceThreeButton: UIButton!
    @IBOutlet weak var choiceFourButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizMaster = QuizMaster()
    var player: AVAudioPlayer!
    
    var userSelection: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func buttonActuated(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userAnswerIsCorrect = quizMaster.checkAnswer(userAnswer)
        
        // Checking correctness of user's answers
        if (userAnswerIsCorrect) {
            sender.backgroundColor = UIColor.green
            let url = Bundle.main.url(forResource: "correct_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        else {
            sender.backgroundColor = UIColor.red
            let url = Bundle.main.url(forResource: "incorrect_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
        
        nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "topToFinal" {
            let destinationVC = segue.destination as! TopScoreViewController
            destinationVC.finalScore = quizMaster.getScore()
        }
    }
    
    func moveBoard() {
            performSegue(withIdentifier: "topToFinal", sender: self)
    }
    
    //
    func nextQuestion() {
        // Safety check to ensure the array is not out of index
        if (quizMaster.questionNumber + 1 < quizMaster.randomQuestions.count) {
            quizMaster.questionNumber += 1
        }
        else {
            print(quizMaster.getScore())
            moveBoard()
        }
    }
    //
    
    @objc func updateUI() {
        questionLabel.text = quizMaster.getQuestionText()    // Updating questionLabel
        
        let answerChoice = quizMaster.getAnswer()
        // Updating titles for each of the buttons
        choiceOneButton.setTitle(answerChoice[0], for: .normal)
        choiceTwoButton.setTitle(answerChoice[1], for: .normal)
        choiceThreeButton.setTitle(answerChoice[2], for: .normal)
        choiceFourButton.setTitle(answerChoice[3], for: .normal)
        
        // Resetting each button when the user moves to the next question
        choiceOneButton.backgroundColor = UIColor.clear
        choiceTwoButton.backgroundColor = UIColor.clear
        choiceThreeButton.backgroundColor = UIColor.clear
        choiceFourButton.backgroundColor = UIColor.clear
        
        scoreLabel.text = "  Score: \(quizMaster.getScore())"  // Obtaining the user's current score
        progressBar.progress = quizMaster.getProgress()  // Updating the progress bar
    }
}

