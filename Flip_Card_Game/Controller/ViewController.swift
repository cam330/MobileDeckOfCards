//
//  ViewController.swift
//  Flip_Card_Game
//
//  Created by Cameron Wilcox on 2/2/21.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(CardView(frame: view.frame))
    }


}

