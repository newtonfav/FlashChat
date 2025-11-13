//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeText("⚡️FlashChat", into: titleLabel, characterDelay: 0.08)
       
    }
    
    /// Types text into a UILabel character by character. Compatible with iOS 13.
    private func typeText(_ text: String, into label: UILabel, characterDelay: TimeInterval) {
        label.text = ""
        let characters = Array(text)
        var currentIndex = 0
        Timer.scheduledTimer(withTimeInterval: characterDelay, repeats: true) { timer in
            if currentIndex < characters.count {
                label.text?.append(characters[currentIndex])
                currentIndex += 1
            } else {
                timer.invalidate()
            }
        }
    }

}
