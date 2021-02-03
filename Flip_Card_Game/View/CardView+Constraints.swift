//
//  CardView+Constraints.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import UIKit

extension CardView {
    func setConstraints() {
        let constraints = [
            centerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            centerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            centerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            cardDisplayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardDisplayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cardDisplayView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75),
            cardDisplayView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -44),
            
            cardLowerRightLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardLowerRightLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            cardLowerRightLabel.bottomAnchor.constraint(equalTo: cardDisplayView.bottomAnchor, constant: -20),
            
            cardUpperLeftLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            cardUpperLeftLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cardUpperLeftLabel.topAnchor.constraint(equalTo: cardDisplayView.topAnchor, constant: 20),
            
            cardBackImageView.leadingAnchor.constraint(equalTo:cardDisplayView.leadingAnchor),
            cardBackImageView.trailingAnchor.constraint(equalTo: cardDisplayView.trailingAnchor),
            cardBackImageView.bottomAnchor.constraint(equalTo: cardDisplayView.bottomAnchor),
            cardBackImageView.heightAnchor.constraint(equalTo: cardDisplayView.heightAnchor),
            
            shuffleButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            shuffleButton.heightAnchor.constraint(equalToConstant: 44),
            shuffleButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            shuffleButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
