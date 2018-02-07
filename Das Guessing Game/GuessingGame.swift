//
//  GuessingGame.swift
//  Das Guessing Game
//
//  Created by Salvarajah, Jheeven on 2018-01-16.
//  Copyright © 2018 Salvarajah, Jheeven. All rights reserved.
//

import Foundation
//NOT EMPTY ANYMORE "Insert R-Rated content"
struct GuessingGame {
    //Properties
    var numberToGuess : Int
    var numbersGuessed : [Int]
    //Initializer
    init() {
        //Generate the Random number
        numberToGuess = Int(arc4random_uniform(501)) // get a number between 0 and 500
        //Make an empty list of mnumbers guessed
        numbersGuessed = []
    }
    //Check the guess made
    mutating func compareGuessMade(providedGuess : Int) -> String {
        
        // add the provided guess to the list of guesses made
        numbersGuessed.append(providedGuess)
        
        // Compare the provided guess to the random nuber
        if providedGuess < numberToGuess {
            return " Guss Higher"
        } else if providedGuess > numberToGuess {
            return "Guess Lower"
        } else {
            return "Yay you Guessed it!"
        }
    }
   
}
//Mark Functions

