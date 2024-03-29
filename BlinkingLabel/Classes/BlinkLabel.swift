//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by David Rynn on 9/12/19.
//

import UIKit

public class BlinkLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }

    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
