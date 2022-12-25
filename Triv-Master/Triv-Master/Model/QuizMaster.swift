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
        Questions(q: "“You talkin’ to me,” as Robert De Niro famously says in this 1976 thriller?", a: ["Goodfellas", "The Godfather", "Raging Bull", "Taxi Driver"], ca: "Taxi Driver"),
        Questions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100", "10"], ca: "100"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland", "Austria"], ca: "Australia"),
        Questions(q: "How many weeks are in a year?", a: ["48", "52", "64", "60"], ca: "52"),
        Questions(q: "What film won Steven Spielberg his first Academy Award for Best Director?", a: ["War Horse", "Saving Private Ryan", "Schilder’s List", "Indiana Jones and the Temple of Doom"], ca: "Schilder’s List"),
        Questions(q: "What is the average distance between the moon and the earth in miles?", a: ["382,000", "405,000", "360,000", "238,000"], ca: "238,000"),
        Questions(q: "What is the world’s largest land animal?", a: ["Goliath Beetle", "Blue Whale", "African Elephant", "Whale Shark"], ca: "African Elephant"),
        Questions(q: "What connects the muscles with the bones?", a: ["Flexor Retinaculum", "Tendons", "Soleus", "Trapezius"], ca: "Tendons"),
        Questions(q: "Tennis was first presented as an Olympic sport in what year?", a: ["1896", "1900", "1928", "1912"], ca: "1896"),
        Questions(q: "What was the nationality of Marco Polo?", a: ["Greek", "British", "Dutch", "Venetian"], ca: "Venetian")
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
