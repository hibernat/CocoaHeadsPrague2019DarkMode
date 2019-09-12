//
//  UIColor+demo.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var myLabelBackground = UIColor(named: "myLabelBackground")
    static var myLabelText = UIColor(named: "myLabelText")
    static var myStandardBackground = UIColor(named: "myStandardBackground")
    
    static var myGradient: [UIColor] = [UIColor(named:"myGradientStart")!, UIColor(named:"myGradientEnd")!]
    
    // ---------------------------------------------
    func cgColor(resolvedWith traitCollection: UITraitCollection) -> CGColor {
        if #available(iOS 13, *) {
            return self.resolvedColor(with: traitCollection).cgColor
        } else {
            return self.cgColor
        }
    }
    
}

