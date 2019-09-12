//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by David Rynn on 9/12/19.
//

import UIKit

public class BlinkingLabel : UILabel {
    public let image = #imageLiteral(resourceName: "chair")
        //UIImage(named: "chair", in: Bundle(for: BlinkingLabel.self), compatibleWith: nil)
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
