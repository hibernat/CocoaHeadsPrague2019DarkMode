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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "myStandardBackground")
        self.label.textColor = UIColor(named: "myLabelText")
        self.label.backgroundColor = UIColor(named: "myLabelBackground")
        
    }


}

