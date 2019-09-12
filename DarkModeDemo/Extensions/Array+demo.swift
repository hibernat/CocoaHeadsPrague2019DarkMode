//
//  Array+demo.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//

import UIKit


extension Array where Element == UIColor {
    
    var cgColors: [CGColor] { self.map {$0.cgColor} }
    
    func cgColors(resolvedWith traitCollection: UITraitCollection) -> [CGColor] {
        self.map { $0.cgColor(resolvedWith: traitCollection) }
    }
}
