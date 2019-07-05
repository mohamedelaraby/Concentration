//
//  Cards.swift
//  concentration
//
//  Created by Winston on 7/5/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import Foundation

struct Card {
    
    var isFacedUp = false
    var isMatched = false
    var identifier: Int
    
    init(isFacedUp: Bool, isMatched:Bool) {
        self.isMatched = isMatched
        self.isFacedUp = isFacedUp
    }
  init(identifier: Int) {
        self.identifier = identifier
    }
    
}
