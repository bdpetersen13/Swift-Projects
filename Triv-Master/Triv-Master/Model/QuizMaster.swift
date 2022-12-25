//
//  QuizMaster.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 24, 2022.
//

import Foundation

struct QuizMaster {
    // Creating an array to store the questions and answers
    let questions = [
        Questions(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine", "Brain"], ca: "Skin"),
        Questions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100", "10"], ca: "100"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland", "Austria"], ca: "Australia")
    ]
    
    var questionNumber = 0  // Starting with 0 to match the starting position in the quiz array
    var score = 0   // Score starts at 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if (userAnswer == questions[questionNumber].correctAnswer) {
            score += 1
            return true     // Correct
        }
        else {
            return false    // Wrong
        }
    }
    
    func getAnswer() -> [String] {
        return questions[questionNumber].answer
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(questions.count)
        
        return progress
    }
    
    mutating func nextQuestion() {
        // Safety check to ensure the array is not out of index
        if (questionNumber + 1 < questions.count) {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
}
