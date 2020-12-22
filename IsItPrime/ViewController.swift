//
//  ViewController.swift
//  IsItPrime
//
//  Created by Jerilyn on 2020-12-19.
//  Copyright © 2020 Jerilyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeGuess: UITextField!
    @IBOutlet weak var isPrime: UILabel!
    
    @IBAction func checkPrime(_ sender: Any)
    {
        
        if let guessNumber = Int(primeGuess.text!)
        {
            var i = 2
            var remainder = 1
            
            if guessNumber == 1 || guessNumber == 0 {
            isPrime.text = "Nope! \(guessNumber) is not a prime number"        }
            
            if guessNumber == 2 {
                isPrime.text = "Yup! \(guessNumber) is a prime number"            }
        
            if guessNumber != 2 && guessNumber != 1{
        
        
                while remainder != 0 && i < guessNumber {
            
                    remainder = guessNumber % i
            
                    if remainder > 0 {
                        isPrime.text = "Yup! \(guessNumber) is a prime number"
                    }
                    
                    else {
                    isPrime.text = "Nope! \(guessNumber) is not a prime number"
                    }
                }

                i += 1
            }
        }
        
        else {
        isPrime.text = "Please enter a whole number"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

