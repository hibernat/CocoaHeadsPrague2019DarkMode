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
    convenience init(myRGB rgb: MyRGB) {
        if #available(iOS 13, *) {
            self.init(dynamicProvider: { (traitCollection) in
                switch traitCollection.userInterfaceStyle {
                case .dark:
                    let darkMyRGB = rgb.dark
                    return UIColor(red: CGFloat(darkMyRGB.red) / 255, green: CGFloat(darkMyRGB.green) / 255, blue: CGFloat(darkMyRGB.blue) / 255, alpha: 1)
                default:
                    return UIColor(red: CGFloat(rgb.red) / 255, green: CGFloat(rgb.green) / 255, blue: CGFloat(rgb.blue) / 255, alpha: 1)
                }
            })
        } else {
            self.init(red: CGFloat(rgb.red) / 255, green: CGFloat(rgb.green) / 255, blue: CGFloat(rgb.blue) / 255, alpha: 1)
        }
    }
    
    // ---------------------------------------------
    func cgColor(resolvedWith traitCollection: UITraitCollection) -> CGColor {
        if #available(iOS 13, *) {
            return self.resolvedColor(with: traitCollection).cgColor
        } else {
            return self.cgColor
        }
    }
    
}

