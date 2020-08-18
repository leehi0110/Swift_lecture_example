//
//  ViewController.swift
//  SwitchCustomExample
//
//  Created by allabout on 2020/08/18.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchBG: UIView!
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchBG.layer.cornerRadius = switchBG.bounds.height / 2
        switchBtn.layer.cornerRadius = switchBtn.bounds.width / 2
    }

    @IBAction func selectedBtn(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
            self.buttonCenterX.constant = self.buttonCenterX.constant*(-1)
            
            if self.buttonCenterX.constant > 0 {
                 self.switchBG.backgroundColor = UIColor.yellow
            }
            else {
                self.switchBG.backgroundColor = UIColor.gray
            }
            self.view.layoutIfNeeded()
        }
    }
    
}

