//
//  QuizQuestions.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 25, 2022.
//

import Foundation

struct Questions {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], ca: String) {
        self.text = q
        self.answer = a
        self.correctAnswer = ca
    }
}
