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
    
    //Emoji array.
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of:sender){
            flipCard()
        } else {
            print("Chosen card was not in cardButton")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .orange
        }
    }
    
}

