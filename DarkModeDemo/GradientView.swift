//
//  GradientView.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override class var layerClass: AnyClass { return CAGradientLayer.self }
    var gradientLayer: CAGradientLayer { return self.layer as! CAGradientLayer }
        
    // ---------------------------------
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        self.gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        self.gradientLayer.colors = UIColor.myGradient.cgColors(resolvedWith: self.traitCollection)
    }
    
    // ---------------------------------
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // ---------------------------------
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if #available(iOS 13, *) {
            if self.traitCollection.userInterfaceStyle != previousTraitCollection?.userInterfaceStyle {
                self.gradientLayer.colors = UIColor.myGradient.cgColors  // notice - not needed to specify self.traitCollection!!!
                
                // Where current userInterfaceStyle is set?
                //
                // UIView: draw(), layoutSubviews(), traitCollectionDidChange(), tintColorDidChange()
                // UIViewController: viewWillLayoutSubviews(), viewDidLayoutSubviews(), traitCollectionDidChange()
                // UIPresentationController: containerViewWillLayoutSubviews(), containerViewDidLayoutSubviews(), containerViewWillLayoutSubviews()
            }
        }
        super.traitCollectionDidChange(previousTraitCollection)
    }
    
}
