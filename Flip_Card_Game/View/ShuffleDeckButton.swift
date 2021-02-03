//
//  ShuffleDeckButton.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import UIKit

protocol ShuffleDeckButtonDelegate {
    func shuffleDeck()
}

class ShuffleDeckButton: UIButton {
    
    var delegate: ShuffleDeckButtonDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 8
        backgroundColor = .systemBlue
        titleLabel?.font = UIFont.systemFont(ofSize: 22)
        setTitleColor(.white, for: .normal)
        setTitle("Shuffle", for: .normal)
        addTarget(self, action: #selector(shuffleDeckButtonAction), for: .touchUpInside)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func shuffleDeckButtonAction() {
        delegate?.shuffleDeck()
    }
}
