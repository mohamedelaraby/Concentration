//
//  ViewController.swift
//  concentration
//
//  Created by Winston on 6/30/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// Setup FlipCount
    var flipCount = 0 { didSet{ flipCountlabel.text = "Flips: \(flipCount)" } }

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountlabel: UILabel!

    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    
//Touch the cards.
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("cards is not matched")
        }
       
    }

    //Flip the cards over.
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle(" ", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5764705882, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

