//
//  Card.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import UIKit

struct Card: Equatable {
    var suit: Suit
    var value: String
    var color: UIColor?
    
    func getColor() -> UIColor {
        return suit == .heart || suit == .diamond ? .systemRed : .label
    }
    
    func displayValue() -> String {
        return "\(value)\(suit.rawValue)"
    }
}

enum Suit: String {
    case heart = "♥"
    case diamond = "♦"
    case spade = "♠"
    case club = "♣"
}




