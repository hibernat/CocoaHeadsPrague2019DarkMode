//
//  ViewController.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .myStandardBackground
        let myRGB = MyRGB(red: 0xFF, green: 0x58, blue: 0x57)
        self.label.textColor = UIColor(myRGB: myRGB)
        self.label.backgroundColor = .myLabelBackground
        let gradientView = GradientView(frame: CGRect(x: 20, y: 400, width: 280, height: 100))
        self.view.addSubview(gradientView)
        
        if #available(iOS 12, *) {
            // this does not work, I consider it as a bug
            self.imageView.image = UIImage(named: "myImage")?.imageAsset?.image(with: UITraitCollection(userInterfaceStyle: .dark))
        } else {
             self.imageView.image = UIImage(named: "myImage")
        }
    }


}

