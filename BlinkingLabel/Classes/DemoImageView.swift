//
//  DemoImageView.swift
//  BlinkingLabel
//
//  Created by David Rynn on 9/12/19.
//

import UIKit

class DemoImageView: UIImageView {
    init() {
        let image = #imageLiteral(resourceName: "chair")
        super.init(image: image)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
