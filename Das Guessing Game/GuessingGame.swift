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
    //Initializer
    init() {
        //Generate the Random number
        numberToGuess = Int(arc4random_uniform(501)) // get a number between 0 and 500
    }
    func checkGuessGiveFeedback(guess : Int) -> String {
        if numberToGuess > guess {
            print("To High"); else do {
                print("Too Low")
            }
        }
    }
}
//Mark Functions

