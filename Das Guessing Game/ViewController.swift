//
//  ViewController.swift
//  Das Guessing Game
//
//  Created by Salvarajah, Jheeven on 2018-01-13.
//  Copyright © 2018 Salvarajah, Jheeven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var numberInputed: UITextField!
    
    //MARK: Properties (Variables)
    var game = GuessingGame()
    
    //MARK: Overides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The Number to Guess is:")
        print(game.numberToGuess)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        //Print the number that was guessed
        print(numberInputed.text)
        //Use a guard statement to bind to a non-optional variable
        guard let inputGiven = numberInputed.text else {
            //If the input was nil, stop and return (exit) the function
            return
        }
        
        //Use a guard statement to atteplt to create and integer
        guard let integerGiven = Int(inputGiven) else {
            // If the input was text (E.g: "Five") we can't make and integer, so stop and return (exit) the function
            return
        }
       

        //Print the number that was guessed again
        print(integerGiven)
        //The number to guess is:
        print("The Number to Guess is:")
        print(game.numberToGuess)
        
        // Compare the numbers
        print(game.compareGuessMade(providedGuess: integerGiven))
    }
    //MARK: Custom Function(s)

}

