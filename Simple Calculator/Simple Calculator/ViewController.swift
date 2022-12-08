//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Brandon Petersen on November 22, 2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // Initiating variables that will beused for the calculations
    var firstNumber = 0.0
    var secondNumber = 0.0
    var numberResult = 0.0
    var signToggle = 0.0
    var percentageNumber = 0.0
    var numberOperator = ""
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Defining the text field result where the calculation resutls can be seen
    @IBOutlet weak var resultField: UITextField!
    
    // Adding functionality to the number buttons pressed
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        if (resultField.text == "0") {
            switch sender.currentTitle {
            case "1":
                resultField.text = "1"
            case "2":
                resultField.text = "2"
            case "3":
                resultField.text = "3"
            case "4":
                resultField.text = "4"
            case "5":
                resultField.text = "5"
            case "6":
                resultField.text = "6"
            case "7":
                resultField.text = "7"
            case "8":
                resultField.text = "8"
            case "9":
                resultField.text = "9"
            case ".":
                resultField.text = resultField.text! + "."
            default:
                break
            }
        }
        else {
            switch sender.currentTitle {
            case "1":
                resultField.text = resultField.text! + "1"
            case "2":
                resultField.text = resultField.text! + "2"
            case "3":
                resultField.text = resultField.text! + "3"
            case "4":
                resultField.text = resultField.text! + "4"
            case "5":
                resultField.text = resultField.text! + "5"
            case "6":
                resultField.text = resultField.text! + "6"
            case "7":
                resultField.text = resultField.text! + "7"
            case "8":
                resultField.text = resultField.text! + "8"
            case "9":
                resultField.text = resultField.text! + "9"
            case "0":
                resultField.text = resultField.text! + "0"
            case ".":
                resultField.text = resultField.text! + "."
            default:
                break
            }
        }
        
        playSound()
    }
    
    // Adding funcitonality to the modifier buttons when pressed
    @IBAction func modifierButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        numberOperator = sender.currentTitle!
        firstNumber = Double(resultField.text!)!
        resultField.text = ""
        
        if (sender.currentTitle == "AC") {
            resultField.text = String(0)
        }
    }
    
    // Adding funcitionality to the +/- button when pressed
    @IBAction func signToggleNumber(_ sender: UIButton) {
        signToggle = Double(resultField.text!)! * -1
        resultField.text = String(signToggle)
    }
    
    // Adding functionality to the equal button when pressed
    @IBAction func equalButtonPressed(_ sender: UIButton) {
        
        secondNumber = Double(resultField.text!)!
        
        switch numberOperator {
        case "+":
            numberResult = firstNumber + secondNumber
            resultField.text = String(numberResult)
        case "-":
            numberResult = firstNumber - secondNumber
            resultField.text = String(numberResult)
        case "×":
            numberResult = firstNumber * secondNumber
            resultField.text = String(numberResult)
        case "÷":
            numberResult = firstNumber / secondNumber
            resultField.text = String(numberResult)
        case "%":
            percentageNumber = (firstNumber / secondNumber) * 100
            resultField.text = String(percentageNumber)
        default:
            break
        }
    }
    
    // Function for playing sound when a button is pressed
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "click", withExtension: "wav") else
            {return}
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else {return}
            
            player.play()
        }
        
        catch let error {
            print(error.localizedDescription)
        }
    }
}

