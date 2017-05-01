//
//  CircleView.swift
//  social-network-clone
//
//  Created by Jing Gao on 1/5/17.
//  Copyright © 2017 Jing Gao. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
    }
    
}
