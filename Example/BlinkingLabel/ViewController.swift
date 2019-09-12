//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by davidrynn on 09/12/2019.
//  Copyright (c) 2019 davidrynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(10, 20, 200, 30))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFontOfSize(20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true

        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(10, 60, 125, 30))
        toggleButton.setTitle("Toggle Blinking", forState: .normal)
        toggleButton.setTitleColor(UIColor.redColor(), forState: .normal)
        toggleButton.addTarget(self, action: "toggleBlinking", forControlEvents: .touchUpInside)
        view.addSubview(toggleButton)
    }

    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

