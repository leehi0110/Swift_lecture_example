//
//  ViewController.swift
//  FloatingButtonExample
//
//  Created by allabout on 2020/08/17.
//  Copyright © 2020 allabout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPopup" {
            let floatingVC = segue.destination as! floatingButtonListController
            
//            floatingVC.modalPresentationStyle = .overCurrentContext
            floatingVC.modalPresentationStyle = .fullScreen
            
        }
    }
    
}

