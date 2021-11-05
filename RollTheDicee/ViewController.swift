//
//  ViewController.swift
//  RollTheDicee
//
//  Created by Nick Sagan on 05.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice3: UIImageView!
    @IBOutlet weak var dice4: UIImageView!
    @IBOutlet weak var dice5: UIImageView!
    @IBOutlet weak var dice6: UIImageView!
    @IBOutlet weak var segmentedCtrl: UISegmentedControl!
    
    @IBAction func rollButton(_ sender: UIButton) {
    rollDices()
    }
    @IBAction func numberOfDices(_ sender: UISegmentedControl) {
        let x = segmentedCtrl.selectedSegmentIndex
        
        switch x {
        case 0: dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = false
        case 1: dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = false
            dice6.isHidden = false
        case 2: dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
        case 3: dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
        case 4: dice1.isHidden = true
            dice2.isHidden = false
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
        case 5:dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
            
        default:
            dice1.isHidden = false
                dice2.isHidden = false
                dice3.isHidden = false
                dice4.isHidden = false
                dice5.isHidden = false
                dice6.isHidden = false
        }
    }
    func rollDices(){
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        dice1.image = diceArray.randomElement()
        dice2.image = diceArray[Int.random(in: 0..<6)]
        dice3.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0..<6)]
        dice4.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0..<6)]
        dice5.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0..<6)]
        dice6.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][Int.random(in: 0..<6)]
    }
}
