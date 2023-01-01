//
//  QuizMaster.swift
//  Triv-Master
//
//  Created by Brandon Petersen on December 24, 2022.
//

import Foundation

struct QuizMaster {
    var questionNumber = 0  // Starting with 0 to match the starting position in the quiz array
    var score = 0   // Score starts at 0
    
    // Creating an array to store the questions and answers
    let randomQuestions = [
        Questions(q: "“You talkin’ to me,” as Robert De Niro famously says in this 1976 thriller?", a: ["Goodfellas", "The Godfather", "Raging Bull", "Taxi Driver"], ca: "Taxi Driver"),
        Questions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100", "10"], ca: "100"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland", "Austria"], ca: "Australia"),
        Questions(q: "How many weeks are in a year?", a: ["48", "52", "64", "60"], ca: "52"),
        Questions(q: "What film won Steven Spielberg his first Academy Award for Best Director?", a: ["War Horse", "Saving Private Ryan", "Schindler's List", "Indiana Jones"], ca: "Schindler's List"),
        Questions(q: "What is the average distance between the moon and the earth in miles?", a: ["382,000", "405,000", "360,000", "238,000"], ca: "238,000"),
        Questions(q: "What is the world’s largest land animal?", a: ["Goliath Beetle", "Blue Whale", "African Elephant", "Whale Shark"], ca: "African Elephant"),
        Questions(q: "What connects the muscles with the bones?", a: ["Flexor Retinaculum", "Tendons", "Soleus", "Trapezius"], ca: "Tendons"),
        Questions(q: "Tennis was first presented as an Olympic sport in what year?", a: ["1896", "1900", "1928", "1912"], ca: "1896"),
        Questions(q: "What was the nationality of Marco Polo?", a: ["Greek", "British", "Dutch", "Venetian"], ca: "Venetian")
    ]
    
    let scienceQuestions = [
        Questions(q: "Under which of the following sets of conditions would nitrogen gas deviate the MOST from the ideal gas law?", a: ["500K and 50 atmospheres", "500K and 5 atmospheres", "150K and 50 atmospheres", "150K and 5 atmospheres"], ca: "150K and 50 atmospheres"),
        Questions(q: "In terms of naturally supplied nutrients, which of the following elements is typically least abundant and most limiting to biological productivity in lakes?", a: ["Nitrogen", "Phosphorus", "Calcium", "Carbon"], ca: "Phosphorus"),
        Questions(q: "Which of the following rock types could form from the earthfall material following a mass wasting event?", a: ["Limestone", "Tillite", "Breecia", "Schist"], ca: "Breecia"),
        Questions(q: "Which of the following is closest to the maximum horsepower a healthy person can briefly generate? ", a: ["0.25", "0.5", "1", "2"], ca: "2"),
        Questions(q: "Which of the following unusual vertebrates was known in the fossil record for over 100 years before a living specimen was discovered?", a: ["Okapi", "Coelacanth", "Pangolin", "Seven-Gilled Shark"], ca: "Coelacanth"),
        Questions(q: "Infrared spectroscopy typically analyzes which of the following?", a: ["Electronic Excitement", "Nuclear Spins", "Molecular Vibrations", "Atomic Rotation"], ca: "Molecular Vibrations"),
        Questions(q: "Which of the following materials is most commonly associated with schistosity", a: ["Amphibolite", "Gneiss", "Schist", "Slate"], ca: "Amphibolite"),
        Questions(q: "A realized ecological niche includes all but which of the following?", a: ["Resource Requirements", "Range of Tolerance", "Geographical Location", "Competitors"], ca: "Geographical Location"),
        Questions(q: "Which of the following does NOT have to contain an oxygen atom single-bonded to at least one carbon atom?", a: ["Ether", "Ester", "Mercaptan", "Carboxylic Acid"], ca: "Mercaptan"),
        Questions(q: "Which of the following elements is most reactive to water?", a: ["Potassium", "Zinc", "Palladium", "Nickel"], ca: "Potassium")
    ]
    
    let historyQuestions = [
        Questions(q: "In what year is the Bubonic Plague believed to have started in Europe and Asia?", a: ["1325", "1450", "1346", "1278"], ca: "1346"),
        Questions(q: "What was the name of the Ukrainian nuclear power plant that was the site of a nuclear disaster in April 1986?", a: ["Enrico Fermi", "Chernobyl", "Windscale", "Fukushima Daiichi"], ca: "Chernobyl"),
        Questions(q: "What was the name of the international group formed to maintain world peace after World War I?", a: ["The United Nations", "The World Peace Council", "The League of Nations", "The International Peace Institute"], ca: "The League of Nations"),
        Questions(q: "During World War II, Allied troops stormed the beaches of Normandy. Which country is Normandy in?", a: ["Belgium", "France", "Spain", "United Kingdom"], ca: "France"),
        Questions(q: "The U.S. rover Curiosity landed on which planet in August 2012?", a: ["Mars", "Venus", "Mercury", "Pluto"], ca: "Mars"),
        Questions(q: "What is the name of the whistleblower who leaked classified information from the National Security Agency (NSA) in 2013?", a: ["Edward Snowden", "Chelsea Manning", "Blake Percival", "Everett Stern"], ca: "Edward Snowden"),
        Questions(q: "Who became the youngest person to win a Nobel Peace Prize at age 17 in 2014?", a: ["Frederick G. Banting", "Paul A.M. Dirac", "Lawrence Bragg", "Malala Yousafzai"], ca: "Malala Yousafzai"),
        Questions(q: "Which U.S. president took part in the Potsdam Conference, where the Allies reached a peace settlement with Germany?", a: ["Theodore Roosevelt", "Dwight D. Eisenhower", "Harry S. Truman", "Franklin D. Roosevelt"], ca: "Harry S. Truman"),
        Questions(q: "When was the first cardboard box made?", a: ["1817", "1950", "1889", "1914"], ca: "1817"),
        Questions(q: "How many manned moon landings have there been?", a: ["6", "4", "8", "10"], ca: "6"),
    ]
    
    let movieQuestions = [
        Questions(q: "How Much Power Does It Take To Fuel The Flux Capacitor in Back to the Future?", a: ["2.5 Gigawatts", "1.80 Gigawatts", "1.21 Gigawatts", "10 Gigawatts"], ca: "1.21 Gigawatts"),
        Questions(q: "What Was the First Horror Movie to Win an Oscar?", a: ["Get Out", "The Silence of the Lambs", "Alien", "Rosemary's Baby"], ca: "The Silence of the Lambs"),
        Questions(q: "Which Director Is Considered To Have Been The Worst Of All Time?", a: ["James Nguyen", "Michael Bay", "Lucifer Valentine", "Ed Wood"], ca: "Ed Wood"),
        Questions(q: "What Was the First Animated Feature To Be Nominated For Best Picture", a: ["Beauty and the Beast", "Shrek", "Toy Story", "Monsters, Inc."], ca: "Beauty and the Beast"),
        Questions(q: "How Many Meters Was The Death Star's Thermal Exhaust Port?", a: ["5", "2", "1", "8"], ca: "2"),
        Questions(q: "What Was The First Sports Film to Win an Academy Award for Best Picture?", a: ["The Pride of the Yankees", "The Hustler", "Rocky", "Million Dollar Baby"], ca: "Rocky"),
        Questions(q: "What Was George Lucas' Original Last Name for Indiana Jones?", a: ["Brown", "Jones", "Smith", "Williams"], ca: "Smith"),
        Questions(q: " Robin Williams Won A Best Supporting Actor Oscar For What Film?", a: ["Night at the Museum", "Good Will Hunting", "Aladdin", "Flubber"], ca: "Good Will Hunting"),
        Questions(q: "Who Directed ‘Blade Runner’?", a: ["Quentin Tarantino", "Clint Eastwood", "Steven Spielberg", "Ridley Scott"], ca: "Ridley Scott"),
        Questions(q: "What Was The First Full Length Color Cartoon Talking Picture?", a: ["Steamboat Willie", "A fantasy", "Snow White and the Seven Dwarfs", "Fantasia"], ca: "Snow White and the Seven Dwarfs")
    ]
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if (userAnswer == randomQuestions[questionNumber].correctAnswer) {
            score += 1
            return true     // Correct
        }
        else {
            return false    // Wrong
        }
    }
    
    func getAnswer() -> [String] {
        return randomQuestions[questionNumber].answer
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return randomQuestions[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(randomQuestions.count)
        
        return progress
    }
    
    
    
    /*mutating func nextQuestion() {
        // Safety check to ensure the array is not out of index
        if (questionNumber + 1 < questions.count) {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }*/
}
