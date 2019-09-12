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
     
        if #available(iOS 13, *) {
            self.view.backgroundColor = .systemBackground
            self.label.textColor = .label
        } else {
            self.view.backgroundColor = .white
            self.label.textColor = .purple
        }
    }


}

