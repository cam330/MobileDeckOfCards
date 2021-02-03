//
//  Deck.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import Foundation

struct Deck {
    
    static func drawNewCard() -> Card? {
        var avaliableCards = Deck.cardsArray.filter({!Deck.discardArray.contains($0)})
        print(avaliableCards.count)
        if avaliableCards.count == 0 {
            Deck.discardArray.removeAll()
            avaliableCards = cardsArray
        }
        let card = avaliableCards.randomElement()
        if card != nil { Deck.discardArray.append(card!) }
        return card
    }
    
    static var discardArray: [Card] = []
    
    static var cardsArray: [Card] = [
        Card(suit: .heart, value: "A"),
        Card(suit: .heart, value: "2"),
        Card(suit: .heart, value: "3"),
        Card(suit: .heart, value: "4"),
        Card(suit: .heart, value: "5"),
        Card(suit: .heart, value: "6"),
        Card(suit: .heart, value: "7"),
        Card(suit: .heart, value: "8"),
        Card(suit: .heart, value: "9"),
        Card(suit: .heart, value: "10"),
        Card(suit: .heart, value: "J"),
        Card(suit: .heart, value: "Q"),
        Card(suit: .heart, value: "K"),
        
        Card(suit: .diamond, value: "A"),
        Card(suit: .diamond, value: "2"),
        Card(suit: .diamond, value: "3"),
        Card(suit: .diamond, value: "4"),
        Card(suit: .diamond, value: "5"),
        Card(suit: .diamond, value: "6"),
        Card(suit: .diamond, value: "7"),
        Card(suit: .diamond, value: "8"),
        Card(suit: .diamond, value: "9"),
        Card(suit: .diamond, value: "10"),
        Card(suit: .diamond, value: "J"),
        Card(suit: .diamond, value: "Q"),
        Card(suit: .diamond, value: "K"),
        
        Card(suit: .spade, value: "A"),
        Card(suit: .spade, value: "2"),
        Card(suit: .spade, value: "3"),
        Card(suit: .spade, value: "4"),
        Card(suit: .spade, value: "5"),
        Card(suit: .spade, value: "6"),
        Card(suit: .spade, value: "7"),
        Card(suit: .spade, value: "8"),
        Card(suit: .spade, value: "9"),
        Card(suit: .spade, value: "10"),
        Card(suit: .spade, value: "J"),
        Card(suit: .spade, value: "Q"),
        Card(suit: .spade, value: "K"),
        
        Card(suit: .club, value: "A"),
        Card(suit: .club, value: "2"),
        Card(suit: .club, value: "3"),
        Card(suit: .club, value: "4"),
        Card(suit: .club, value: "5"),
        Card(suit: .club, value: "6"),
        Card(suit: .club, value: "7"),
        Card(suit: .club, value: "8"),
        Card(suit: .club, value: "9"),
        Card(suit: .club, value: "10"),
        Card(suit: .club, value: "J"),
        Card(suit: .club, value: "Q"),
        Card(suit: .club, value: "K")
    ]
}
