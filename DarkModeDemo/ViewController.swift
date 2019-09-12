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
    
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .myStandardBackground
        self.label.textColor = .myLabelText
        self.label.backgroundColor = .myLabelBackground
        
        let gradientView = GradientView(frame: CGRect(x: 20, y: 150, width: 280, height: 400))
        self.view.addSubview(gradientView)
    }


}

