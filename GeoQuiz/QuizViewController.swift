//
//  QuizViewController.swift
//  GeoQuiz
//
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: - QuizViewController: UIViewController

class QuizViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var repeatPhraseButton: UIButton!
  
    // MARK: Properties
    
    var languageChoices = [Country]()
    var lastRandomLanguageID = -1
    var selectedRow = -1
    var correctButtonTag = -1
    var currentState: QuizState = .NoQuestionUpYet
    var spokenText = ""
    var bcpCode = ""
    let speechSynth = AVSpeechSynthesizer()

    // MARK: Press Flag Button
    
    @IBAction func flagButtonPressed(sender: UIButton) {
        if sender.tag == correctButtonTag {
            displayAlert("Correct",  messageText: "Good choice!")
        } else {
            displayAlert("Incorrect", messageText: "Nope. Try again!")
        }
    }
}