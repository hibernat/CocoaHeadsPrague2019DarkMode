//
//  ViewController.swift
//  DarkModeDemo
//
//  Created by Michael Bernat on 12/09/2019.
//  Copyright © 2019 Michael Bernat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13, *) {
            self.view.backgroundColor = .systemBackground
        }
    }

    @IBAction func onButtonTouchUpInside(_ sender: Any) {
        
        let newViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        self.present(newViewController, animated: true)
    }
    
}

