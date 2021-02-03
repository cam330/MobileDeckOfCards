//
//  CardView.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import UIKit

class CardView: UIView, ShuffleDeckButtonDelegate {

    let centerLabel = UILabel()
    let cardDisplayView = UIView()
    let cardUpperLeftLabel = UILabel()
    let cardLowerRightLabel = UILabel()
    let cardBackImageView = UIImageView()
    let shuffleButton = ShuffleDeckButton()
    
    var card: Card! {
        didSet {
            cardBackImageView.isHidden = card != nil ? true : false
            cardBackImageView.backgroundColor = card != nil ? UIColor.systemBackground : .clear
            if card != nil {
                centerLabel.text = card.value
                cardLowerRightLabel.text = card.displayValue()
                cardUpperLeftLabel.text = card.displayValue()
                centerLabel.textColor = card.getColor()
                cardUpperLeftLabel.textColor = card.getColor()
                cardLowerRightLabel.textColor = card.getColor()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        shuffleButton.delegate = self
        
        cardDisplayView.backgroundColor = .systemBackground
        cardDisplayView.layer.cornerRadius = 36
        cardDisplayView.translatesAutoresizingMaskIntoConstraints = false
        
        centerLabel.textAlignment = .center
        centerLabel.font = UIFont.boldSystemFont(ofSize: 150)
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cardLowerRightLabel.font = UIFont.boldSystemFont(ofSize: 40)
        cardLowerRightLabel.transform = CGAffineTransform(rotationAngle: .pi)
        cardLowerRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cardUpperLeftLabel.font = UIFont.boldSystemFont(ofSize: 40)
        cardUpperLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cardBackImageView.image = UIImage(named: "card_back_img")
        cardBackImageView.layer.cornerRadius = 12
        cardBackImageView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(shuffleButton)
        addSubview(cardDisplayView)
        cardDisplayView.addSubview(centerLabel)
        cardDisplayView.addSubview(cardLowerRightLabel)
        cardDisplayView.addSubview(cardUpperLeftLabel)
        addSubview(cardBackImageView)
        
        setConstraints()
        
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(drawCard)))
    }

    
    @objc func drawCard() {
        card = Deck.drawNewCard()
    }
    
    func shuffleDeck() {
        Deck.discardArray.removeAll()
        card = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
